﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class DG_Tweening_Core_Surrogates_ColorWrapperWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(DG.Tweening.Core.Surrogates.ColorWrapper), null);
		L.RegFunction("New", _CreateDG_Tweening_Core_Surrogates_ColorWrapper);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("value", get_value, set_value);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateDG_Tweening_Core_Surrogates_ColorWrapper(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 1)
			{
				UnityEngine.Color arg0 = ToLua.ToColor(L, 1);
				DG.Tweening.Core.Surrogates.ColorWrapper obj = new DG.Tweening.Core.Surrogates.ColorWrapper(arg0);
				ToLua.PushValue(L, obj);
				return 1;
			}
			else if (count == 0)
			{
				DG.Tweening.Core.Surrogates.ColorWrapper obj = new DG.Tweening.Core.Surrogates.ColorWrapper();
				ToLua.PushValue(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: DG.Tweening.Core.Surrogates.ColorWrapper.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_value(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DG.Tweening.Core.Surrogates.ColorWrapper obj = (DG.Tweening.Core.Surrogates.ColorWrapper)o;
			UnityEngine.Color ret = obj.value;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index value on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_value(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			DG.Tweening.Core.Surrogates.ColorWrapper obj = (DG.Tweening.Core.Surrogates.ColorWrapper)o;
			UnityEngine.Color arg0 = ToLua.ToColor(L, 2);
			obj.value = arg0;
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index value on a nil value");
		}
	}
}
