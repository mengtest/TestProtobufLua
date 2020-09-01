Network = {}
local this = Network

local transform
local gameObject
local islogging = false

function Network.Start()
    logWarn("Network.Start!!")
    Event.AddListener(Protocal.Connect, this.OnConnect)
    Event.AddListener(Protocal.Message, this.OnMessage)
    Event.AddListener(Protocal.Exception, this.OnException)
    Event.AddListener(Protocal.Disconnect, this.OnDisconnect)
end

--Socket消息--
function Network.OnSocket(key, data)
    Event.Brocast(tostring(key), data)
end

--当连接建立时--
function Network.OnConnect()
    logWarn("Game Server connected!!")
end

--异常断线--
function Network.OnException()
    islogging = false
    NetManager:SendConnect()
    logError("OnException------->>>>")
end

--连接中断，或者被踢掉--
function Network.OnDisconnect()
    islogging = false
    logError("OnDisconnect------->>>>")
end

--登录返回--
function Network.OnMessage(buffer)
    if TestProtoType == ProtocalType.BINARY then
        this.TestLoginBinary(buffer)
    end
    if TestProtoType == ProtocalType.PBC then
        this.TestLoginPbc(buffer)
    end
    ----------------------------------------------------
    local ctrl = CtrlManager.GetCtrl(CtrlNames.Message)
    if ctrl ~= nil then
        ctrl:Awake()
    end
    logWarn("OnMessage-------->>>")
end

--二进制登录--
function Network.TestLoginBinary(buffer)
    local protocal = buffer:ReadByte()
    local str = buffer:ReadString()
    log("TestLoginBinary: protocal:>" .. protocal .. " str:>" .. str)
end

--PBC登录--
function Network.TestLoginPbc(buffer)
    local protocal = buffer:ReadByte()
    local data = buffer:ReadBuffer()

    local path = Util.DataPath .. "lua/3rd/pbc/addressbook.pb"

    local addr = io.open(path, "rb")
    local buffer = addr:read "*a"
    addr:close()
    protobuf.register(buffer)
    local decode = protobuf.decode("tutorial.Person", data)

    print(decode.name)
    print(decode.id)
    for _, v in ipairs(decode.phone) do
        print("\t" .. v.number, v.type)
    end
    log("TestLoginPbc: protocal:>" .. protocal)
end

--卸载网络监听--
function Network.Unload()
    Event.RemoveListener(Protocal.Connect)
    Event.RemoveListener(Protocal.Message)
    Event.RemoveListener(Protocal.Exception)
    Event.RemoveListener(Protocal.Disconnect)
    logWarn("Unload Network...")
end
