// Generated by Haxe 4.3.6
#ifndef INCLUDED_flixel_system__FlxPreloader_GraphicLogoCorners
#define INCLUDED_flixel_system__FlxPreloader_GraphicLogoCorners

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_openfl_display_BitmapData
#include <openfl/display/BitmapData.h>
#endif
HX_DECLARE_CLASS3(flixel,_hx_system,_FlxPreloader,GraphicLogoCorners)
HX_DECLARE_CLASS2(openfl,display,BitmapData)
HX_DECLARE_CLASS2(openfl,display,IBitmapDrawable)

namespace flixel{
namespace _hx_system{
namespace _FlxPreloader{


class HXCPP_CLASS_ATTRIBUTES GraphicLogoCorners_obj : public  ::openfl::display::BitmapData_obj
{
	public:
		typedef  ::openfl::display::BitmapData_obj super;
		typedef GraphicLogoCorners_obj OBJ_;
		GraphicLogoCorners_obj();

	public:
		enum { _hx_ClassId = 0x74678f63 };

		void __construct(int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="flixel.system._FlxPreloader.GraphicLogoCorners")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,true,"flixel.system._FlxPreloader.GraphicLogoCorners"); }
		static ::hx::ObjectPtr< GraphicLogoCorners_obj > __new(int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA);
		static ::hx::ObjectPtr< GraphicLogoCorners_obj > __alloc(::hx::Ctx *_hx_ctx,int width,int height, ::Dynamic __o_transparent, ::Dynamic __o_fillRGBA);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~GraphicLogoCorners_obj();

		HX_DO_RTTI_ALL;
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, ::hx::PropertyAccess inCallProp);
		static bool __SetStatic(const ::String &inString, Dynamic &ioValue, ::hx::PropertyAccess inCallProp);
		static void __register();
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("GraphicLogoCorners",2b,49,c3,af); }

		static void __boot();
		static ::String resourceName;
};

} // end namespace flixel
} // end namespace system
} // end namespace _FlxPreloader

#endif /* INCLUDED_flixel_system__FlxPreloader_GraphicLogoCorners */ 
