// Generated by Haxe 4.3.6
#include <hxcpp.h>

#ifndef INCLUDED_95f339a1d026d52c
#define INCLUDED_95f339a1d026d52c
#include "hxMath.h"
#endif
#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_flixel_FlxG
#include <flixel/FlxG.h>
#endif
#ifndef INCLUDED_flixel_system_FlxAssets
#include <flixel/system/FlxAssets.h>
#endif
#ifndef INCLUDED_flixel_system_FlxBasePreloader
#include <flixel/system/FlxBasePreloader.h>
#endif
#ifndef INCLUDED_flixel_system_FlxPreloader
#include <flixel/system/FlxPreloader.h>
#endif
#ifndef INCLUDED_flixel_system_FlxVersion
#include <flixel/system/FlxVersion.h>
#endif
#ifndef INCLUDED_flixel_system__FlxBasePreloader_DefaultPreloader
#include <flixel/system/_FlxBasePreloader/DefaultPreloader.h>
#endif
#ifndef INCLUDED_flixel_system__FlxPreloader_GraphicLogoCorners
#include <flixel/system/_FlxPreloader/GraphicLogoCorners.h>
#endif
#ifndef INCLUDED_flixel_system__FlxPreloader_GraphicLogoLight
#include <flixel/system/_FlxPreloader/GraphicLogoLight.h>
#endif
#ifndef INCLUDED_lime_app_IModule
#include <lime/app/IModule.h>
#endif
#ifndef INCLUDED_openfl_Lib
#include <openfl/Lib.h>
#endif
#ifndef INCLUDED_openfl_display_Bitmap
#include <openfl/display/Bitmap.h>
#endif
#ifndef INCLUDED_openfl_display_BitmapData
#include <openfl/display/BitmapData.h>
#endif
#ifndef INCLUDED_openfl_display_DisplayObject
#include <openfl/display/DisplayObject.h>
#endif
#ifndef INCLUDED_openfl_display_DisplayObjectContainer
#include <openfl/display/DisplayObjectContainer.h>
#endif
#ifndef INCLUDED_openfl_display_Graphics
#include <openfl/display/Graphics.h>
#endif
#ifndef INCLUDED_openfl_display_IBitmapDrawable
#include <openfl/display/IBitmapDrawable.h>
#endif
#ifndef INCLUDED_openfl_display_InteractiveObject
#include <openfl/display/InteractiveObject.h>
#endif
#ifndef INCLUDED_openfl_display_MovieClip
#include <openfl/display/MovieClip.h>
#endif
#ifndef INCLUDED_openfl_display_Sprite
#include <openfl/display/Sprite.h>
#endif
#ifndef INCLUDED_openfl_display_Stage
#include <openfl/display/Stage.h>
#endif
#ifndef INCLUDED_openfl_events_EventDispatcher
#include <openfl/events/EventDispatcher.h>
#endif
#ifndef INCLUDED_openfl_events_IEventDispatcher
#include <openfl/events/IEventDispatcher.h>
#endif
#ifndef INCLUDED_openfl_text_TextField
#include <openfl/text/TextField.h>
#endif
#ifndef INCLUDED_openfl_text_TextFormat
#include <openfl/text/TextFormat.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_0674f1d47827dd75_41_new,"flixel.system.FlxPreloader","new",0x2ee42503,"flixel.system.FlxPreloader.new","flixel/system/FlxPreloader.hx",41,0xf0599dad)
HX_LOCAL_STACK_FRAME(_hx_pos_0674f1d47827dd75_59_create,"flixel.system.FlxPreloader","create",0xb9295a39,"flixel.system.FlxPreloader.create","flixel/system/FlxPreloader.hx",59,0xf0599dad)
HX_LOCAL_STACK_FRAME(_hx_pos_0674f1d47827dd75_94_create,"flixel.system.FlxPreloader","create",0xb9295a39,"flixel.system.FlxPreloader.create","flixel/system/FlxPreloader.hx",94,0xf0599dad)
HX_LOCAL_STACK_FRAME(_hx_pos_0674f1d47827dd75_50_create,"flixel.system.FlxPreloader","create",0xb9295a39,"flixel.system.FlxPreloader.create","flixel/system/FlxPreloader.hx",50,0xf0599dad)
HX_LOCAL_STACK_FRAME(_hx_pos_0674f1d47827dd75_125_destroy,"flixel.system.FlxPreloader","destroy",0x5e210f1d,"flixel.system.FlxPreloader.destroy","flixel/system/FlxPreloader.hx",125,0xf0599dad)
HX_LOCAL_STACK_FRAME(_hx_pos_0674f1d47827dd75_143_update,"flixel.system.FlxPreloader","update",0xc41f7946,"flixel.system.FlxPreloader.update","flixel/system/FlxPreloader.hx",143,0xf0599dad)
namespace flixel{
namespace _hx_system{

void FlxPreloader_obj::__construct(::hx::Null< Float >  __o_MinDisplayTime,::Array< ::String > AllowedURLs){
            		Float MinDisplayTime = __o_MinDisplayTime.Default(0);
            	HX_STACKFRAME(&_hx_pos_0674f1d47827dd75_41_new)
HXDLIN(  41)		super::__construct(MinDisplayTime,AllowedURLs);
            	}

Dynamic FlxPreloader_obj::__CreateEmpty() { return new FlxPreloader_obj; }

void *FlxPreloader_obj::_hx_vtable = 0;

Dynamic FlxPreloader_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< FlxPreloader_obj > _hx_result = new FlxPreloader_obj();
	_hx_result->__construct(inArgs[0],inArgs[1]);
	return _hx_result;
}

bool FlxPreloader_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x1f4df417) {
		if (inClassId<=(int)0x0a33888f) {
			if (inClassId<=(int)0x0330636f) {
				return inClassId==(int)0x00000001 || inClassId==(int)0x0330636f;
			} else {
				return inClassId==(int)0x0a33888f;
			}
		} else {
			return inClassId==(int)0x0c89e854 || inClassId==(int)0x1f4df417;
		}
	} else {
		if (inClassId<=(int)0x4af7dd8e) {
			if (inClassId<=(int)0x318ede3c) {
				return inClassId==(int)0x2f28d986 || inClassId==(int)0x318ede3c;
			} else {
				return inClassId==(int)0x4af7dd8e;
			}
		} else {
			return inClassId==(int)0x6b353933;
		}
	}
}

void FlxPreloader_obj::create(){
            		HX_BEGIN_LOCAL_FUNC_S1(::hx::LocalFunc,_hx_Closure_0, ::flixel::_hx_system::FlxPreloader,_gthis) HXARGC(1)
            		void _hx_run( ::openfl::display::Bitmap logoLight){
            			HX_GC_STACKFRAME(&_hx_pos_0674f1d47827dd75_59_create)
HXLINE(  60)			logoLight->set_width(logoLight->set_height(( (Float)(_gthis->_height) )));
HXLINE(  61)			int _gthis1 = _gthis->_width;
HXDLIN(  61)			logoLight->set_x(((( (Float)(_gthis1) ) - logoLight->get_width()) / ( (Float)(2) )));
            		}
            		HX_END_LOCAL_FUNC1((void))

            		HX_BEGIN_LOCAL_FUNC_S1(::hx::LocalFunc,_hx_Closure_1, ::flixel::_hx_system::FlxPreloader,_gthis) HXARGC(1)
            		void _hx_run( ::openfl::display::Bitmap corners){
            			HX_GC_STACKFRAME(&_hx_pos_0674f1d47827dd75_94_create)
HXLINE(  95)			corners->set_width(( (Float)(_gthis->_width) ));
HXLINE(  96)			corners->set_height(_gthis->get_height());
            		}
            		HX_END_LOCAL_FUNC1((void))

            	HX_GC_STACKFRAME(&_hx_pos_0674f1d47827dd75_50_create)
HXDLIN(  50)		 ::flixel::_hx_system::FlxPreloader _gthis = ::hx::ObjectPtr<OBJ_>(this);
HXLINE(  51)		this->_buffer =  ::openfl::display::Sprite_obj::__alloc( HX_CTX );
HXLINE(  52)		 ::openfl::display::Sprite _hx_tmp = this->_buffer;
HXDLIN(  52)		_hx_tmp->set_scaleX(this->_buffer->set_scaleY(( (Float)(2) )));
HXLINE(  53)		this->addChild(this->_buffer);
HXLINE(  54)		int _hx_tmp1 = ::openfl::Lib_obj::get_current()->stage->stageWidth;
HXDLIN(  54)		this->_width = ::Std_obj::_hx_int((( (Float)(_hx_tmp1) ) / this->_buffer->get_scaleX()));
HXLINE(  55)		int _hx_tmp2 = ::openfl::Lib_obj::get_current()->stage->stageHeight;
HXDLIN(  55)		this->_height = ::Std_obj::_hx_int((( (Float)(_hx_tmp2) ) / this->_buffer->get_scaleY()));
HXLINE(  56)		 ::openfl::display::Sprite _hx_tmp3 = this->_buffer;
HXDLIN(  56)		_hx_tmp3->addChild( ::openfl::display::Bitmap_obj::__alloc( HX_CTX , ::openfl::display::BitmapData_obj::__alloc( HX_CTX ,this->_width,this->_height,false,13406),null(),null()));
HXLINE(  58)		 ::openfl::display::Bitmap logoLight = this->createBitmap(::hx::ClassOf< ::flixel::_hx_system::_FlxPreloader::GraphicLogoLight >(), ::Dynamic(new _hx_Closure_0(_gthis)));
HXLINE(  63)		logoLight->smoothing = true;
HXLINE(  64)		this->_buffer->addChild(logoLight);
HXLINE(  65)		this->_bmpBar =  ::openfl::display::Bitmap_obj::__alloc( HX_CTX , ::openfl::display::BitmapData_obj::__alloc( HX_CTX ,1,7,false,6253311),null(),null());
HXLINE(  66)		this->_bmpBar->set_x(( (Float)(4) ));
HXLINE(  67)		this->_bmpBar->set_y(( (Float)((this->_height - 11)) ));
HXLINE(  68)		this->_buffer->addChild(this->_bmpBar);
HXLINE(  70)		this->_text =  ::openfl::text::TextField_obj::__alloc( HX_CTX );
HXLINE(  71)		 ::openfl::text::TextField _hx_tmp4 = this->_text;
HXDLIN(  71)		_hx_tmp4->set_defaultTextFormat( ::openfl::text::TextFormat_obj::__alloc( HX_CTX ,::flixel::_hx_system::FlxAssets_obj::FONT_DEFAULT,8,6253311,null(),null(),null(),null(),null(),null(),null(),null(),null(),null()));
HXLINE(  72)		this->_text->set_embedFonts(true);
HXLINE(  73)		this->_text->set_selectable(false);
HXLINE(  74)		this->_text->set_multiline(false);
HXLINE(  75)		this->_text->set_x(( (Float)(2) ));
HXLINE(  76)		 ::openfl::text::TextField _hx_tmp5 = this->_text;
HXDLIN(  76)		_hx_tmp5->set_y((this->_bmpBar->get_y() - ( (Float)(11) )));
HXLINE(  77)		this->_text->set_width(( (Float)(200) ));
HXLINE(  78)		this->_buffer->addChild(this->_text);
HXLINE(  80)		this->_logo =  ::openfl::display::Sprite_obj::__alloc( HX_CTX );
HXLINE(  81)		::flixel::_hx_system::FlxAssets_obj::drawLogo(this->_logo->get_graphics());
HXLINE(  82)		 ::openfl::display::Sprite _hx_tmp6 = this->_logo;
HXDLIN(  82)		_hx_tmp6->set_scaleX(this->_logo->set_scaleY(((( (Float)(this->_height) ) / ( (Float)(8) )) * ((Float)0.04))));
HXLINE(  83)		 ::openfl::display::Sprite _hx_tmp7 = this->_logo;
HXDLIN(  83)		int _hx_tmp8 = this->_width;
HXDLIN(  83)		_hx_tmp7->set_x(((( (Float)(_hx_tmp8) ) - this->_logo->get_width()) / ( (Float)(2) )));
HXLINE(  84)		 ::openfl::display::Sprite _hx_tmp9 = this->_logo;
HXDLIN(  84)		int _hx_tmp10 = this->_height;
HXDLIN(  84)		_hx_tmp9->set_y(((( (Float)(_hx_tmp10) ) - this->_logo->get_height()) / ( (Float)(2) )));
HXLINE(  85)		this->_buffer->addChild(this->_logo);
HXLINE(  86)		this->_logoGlow =  ::openfl::display::Sprite_obj::__alloc( HX_CTX );
HXLINE(  87)		::flixel::_hx_system::FlxAssets_obj::drawLogo(this->_logoGlow->get_graphics());
HXLINE(  88)		this->_logoGlow->set_blendMode(12);
HXLINE(  89)		 ::openfl::display::Sprite _hx_tmp11 = this->_logoGlow;
HXDLIN(  89)		_hx_tmp11->set_scaleX(this->_logoGlow->set_scaleY(((( (Float)(this->_height) ) / ( (Float)(8) )) * ((Float)0.04))));
HXLINE(  90)		 ::openfl::display::Sprite _hx_tmp12 = this->_logoGlow;
HXDLIN(  90)		int _hx_tmp13 = this->_width;
HXDLIN(  90)		_hx_tmp12->set_x(((( (Float)(_hx_tmp13) ) - this->_logoGlow->get_width()) / ( (Float)(2) )));
HXLINE(  91)		 ::openfl::display::Sprite _hx_tmp14 = this->_logoGlow;
HXDLIN(  91)		int _hx_tmp15 = this->_height;
HXDLIN(  91)		_hx_tmp14->set_y(((( (Float)(_hx_tmp15) ) - this->_logoGlow->get_height()) / ( (Float)(2) )));
HXLINE(  92)		this->_buffer->addChild(this->_logoGlow);
HXLINE(  93)		 ::openfl::display::Bitmap corners = this->createBitmap(::hx::ClassOf< ::flixel::_hx_system::_FlxPreloader::GraphicLogoCorners >(), ::Dynamic(new _hx_Closure_1(_gthis)));
HXLINE(  98)		corners->smoothing = true;
HXLINE(  99)		this->_buffer->addChild(corners);
HXLINE( 101)		 ::openfl::display::Bitmap bitmap =  ::openfl::display::Bitmap_obj::__alloc( HX_CTX , ::openfl::display::BitmapData_obj::__alloc( HX_CTX ,this->_width,this->_height,false,16777215),null(),null());
HXLINE( 102)		int i = 0;
HXLINE( 103)		int j = 0;
HXLINE( 104)		while((i < this->_height)){
HXLINE( 106)			j = 0;
HXLINE( 107)			while((j < this->_width)){
HXLINE( 109)				j = (j + 1);
HXDLIN( 109)				bitmap->get_bitmapData()->setPixel((j - 1),i,0);
            			}
HXLINE( 111)			i = (i + 2);
            		}
HXLINE( 113)		bitmap->set_blendMode(11);
HXLINE( 114)		bitmap->set_alpha(((Float)0.25));
HXLINE( 115)		this->_buffer->addChild(bitmap);
HXLINE( 117)		this->super::create();
            	}


void FlxPreloader_obj::destroy(){
            	HX_STACKFRAME(&_hx_pos_0674f1d47827dd75_125_destroy)
HXLINE( 126)		if (::hx::IsNotNull( this->_buffer )) {
HXLINE( 128)			this->removeChild(this->_buffer);
            		}
HXLINE( 130)		this->_buffer = null();
HXLINE( 131)		this->_bmpBar = null();
HXLINE( 132)		this->_text = null();
HXLINE( 133)		this->_logo = null();
HXLINE( 134)		this->_logoGlow = null();
HXLINE( 135)		this->super::destroy();
            	}


void FlxPreloader_obj::update(Float Percent){
            	HX_STACKFRAME(&_hx_pos_0674f1d47827dd75_143_update)
HXLINE( 144)		this->_bmpBar->set_scaleX((Percent * ( (Float)((this->_width - 8)) )));
HXLINE( 145)		 ::openfl::text::TextField _hx_tmp = this->_text;
HXDLIN( 145)		::String _hx_tmp1 = (::Std_obj::string(::flixel::FlxG_obj::VERSION) + HX_(" ",20,00,00,00));
HXDLIN( 145)		_hx_tmp->set_text(((_hx_tmp1 + ::Std_obj::_hx_int((Percent * ( (Float)(100) )))) + HX_("%",25,00,00,00)));
HXLINE( 147)		if ((Percent < ((Float)0.1))) {
HXLINE( 149)			this->_logoGlow->set_alpha(( (Float)(0) ));
HXLINE( 150)			this->_logo->set_alpha(( (Float)(0) ));
            		}
            		else {
HXLINE( 152)			if ((Percent < ((Float)0.15))) {
HXLINE( 154)				this->_logoGlow->set_alpha(::Math_obj::random());
HXLINE( 155)				this->_logo->set_alpha(( (Float)(0) ));
            			}
            			else {
HXLINE( 157)				if ((Percent < ((Float)0.2))) {
HXLINE( 159)					this->_logoGlow->set_alpha(( (Float)(0) ));
HXLINE( 160)					this->_logo->set_alpha(( (Float)(0) ));
            				}
            				else {
HXLINE( 162)					if ((Percent < ((Float)0.25))) {
HXLINE( 164)						this->_logoGlow->set_alpha(( (Float)(0) ));
HXLINE( 165)						this->_logo->set_alpha(::Math_obj::random());
            					}
            					else {
HXLINE( 167)						if ((Percent < ((Float)0.7))) {
HXLINE( 169)							this->_logoGlow->set_alpha(((Percent - ((Float)0.45)) / ((Float)0.45)));
HXLINE( 170)							this->_logo->set_alpha(( (Float)(1) ));
            						}
            						else {
HXLINE( 172)							bool _hx_tmp2;
HXDLIN( 172)							if ((Percent > ((Float)0.8))) {
HXLINE( 172)								_hx_tmp2 = (Percent < ((Float)0.9));
            							}
            							else {
HXLINE( 172)								_hx_tmp2 = false;
            							}
HXDLIN( 172)							if (_hx_tmp2) {
HXLINE( 174)								this->_logoGlow->set_alpha((( (Float)(1) ) - ((Percent - ((Float)0.8)) / ((Float)0.1))));
HXLINE( 175)								this->_logo->set_alpha(( (Float)(0) ));
            							}
            							else {
HXLINE( 177)								if ((Percent > ((Float)0.9))) {
HXLINE( 179)									this->_buffer->set_alpha((( (Float)(1) ) - ((Percent - ((Float)0.9)) / ((Float)0.1))));
            								}
            							}
            						}
            					}
            				}
            			}
            		}
            	}



::hx::ObjectPtr< FlxPreloader_obj > FlxPreloader_obj::__new(::hx::Null< Float >  __o_MinDisplayTime,::Array< ::String > AllowedURLs) {
	::hx::ObjectPtr< FlxPreloader_obj > __this = new FlxPreloader_obj();
	__this->__construct(__o_MinDisplayTime,AllowedURLs);
	return __this;
}

::hx::ObjectPtr< FlxPreloader_obj > FlxPreloader_obj::__alloc(::hx::Ctx *_hx_ctx,::hx::Null< Float >  __o_MinDisplayTime,::Array< ::String > AllowedURLs) {
	FlxPreloader_obj *__this = (FlxPreloader_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(FlxPreloader_obj), true, "flixel.system.FlxPreloader"));
	*(void **)__this = FlxPreloader_obj::_hx_vtable;
	__this->__construct(__o_MinDisplayTime,AllowedURLs);
	return __this;
}

FlxPreloader_obj::FlxPreloader_obj()
{
}

void FlxPreloader_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(FlxPreloader);
	HX_MARK_MEMBER_NAME(_buffer,"_buffer");
	HX_MARK_MEMBER_NAME(_bmpBar,"_bmpBar");
	HX_MARK_MEMBER_NAME(_text,"_text");
	HX_MARK_MEMBER_NAME(_logo,"_logo");
	HX_MARK_MEMBER_NAME(_logoGlow,"_logoGlow");
	 ::flixel::_hx_system::FlxBasePreloader_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void FlxPreloader_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(_buffer,"_buffer");
	HX_VISIT_MEMBER_NAME(_bmpBar,"_bmpBar");
	HX_VISIT_MEMBER_NAME(_text,"_text");
	HX_VISIT_MEMBER_NAME(_logo,"_logo");
	HX_VISIT_MEMBER_NAME(_logoGlow,"_logoGlow");
	 ::flixel::_hx_system::FlxBasePreloader_obj::__Visit(HX_VISIT_ARG);
}

::hx::Val FlxPreloader_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 5:
		if (HX_FIELD_EQ(inName,"_text") ) { return ::hx::Val( _text ); }
		if (HX_FIELD_EQ(inName,"_logo") ) { return ::hx::Val( _logo ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"create") ) { return ::hx::Val( create_dyn() ); }
		if (HX_FIELD_EQ(inName,"update") ) { return ::hx::Val( update_dyn() ); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"_buffer") ) { return ::hx::Val( _buffer ); }
		if (HX_FIELD_EQ(inName,"_bmpBar") ) { return ::hx::Val( _bmpBar ); }
		if (HX_FIELD_EQ(inName,"destroy") ) { return ::hx::Val( destroy_dyn() ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"_logoGlow") ) { return ::hx::Val( _logoGlow ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val FlxPreloader_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 5:
		if (HX_FIELD_EQ(inName,"_text") ) { _text=inValue.Cast<  ::openfl::text::TextField >(); return inValue; }
		if (HX_FIELD_EQ(inName,"_logo") ) { _logo=inValue.Cast<  ::openfl::display::Sprite >(); return inValue; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"_buffer") ) { _buffer=inValue.Cast<  ::openfl::display::Sprite >(); return inValue; }
		if (HX_FIELD_EQ(inName,"_bmpBar") ) { _bmpBar=inValue.Cast<  ::openfl::display::Bitmap >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"_logoGlow") ) { _logoGlow=inValue.Cast<  ::openfl::display::Sprite >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void FlxPreloader_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("_buffer",9f,ce,0b,3f));
	outFields->push(HX_("_bmpBar",2d,f8,57,aa));
	outFields->push(HX_("_text",8c,e8,0a,00));
	outFields->push(HX_("_logo",4a,bb,c8,fa));
	outFields->push(HX_("_logoGlow",f7,a2,29,b8));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo FlxPreloader_obj_sMemberStorageInfo[] = {
	{::hx::fsObject /*  ::openfl::display::Sprite */ ,(int)offsetof(FlxPreloader_obj,_buffer),HX_("_buffer",9f,ce,0b,3f)},
	{::hx::fsObject /*  ::openfl::display::Bitmap */ ,(int)offsetof(FlxPreloader_obj,_bmpBar),HX_("_bmpBar",2d,f8,57,aa)},
	{::hx::fsObject /*  ::openfl::text::TextField */ ,(int)offsetof(FlxPreloader_obj,_text),HX_("_text",8c,e8,0a,00)},
	{::hx::fsObject /*  ::openfl::display::Sprite */ ,(int)offsetof(FlxPreloader_obj,_logo),HX_("_logo",4a,bb,c8,fa)},
	{::hx::fsObject /*  ::openfl::display::Sprite */ ,(int)offsetof(FlxPreloader_obj,_logoGlow),HX_("_logoGlow",f7,a2,29,b8)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *FlxPreloader_obj_sStaticStorageInfo = 0;
#endif

static ::String FlxPreloader_obj_sMemberFields[] = {
	HX_("_buffer",9f,ce,0b,3f),
	HX_("_bmpBar",2d,f8,57,aa),
	HX_("_text",8c,e8,0a,00),
	HX_("_logo",4a,bb,c8,fa),
	HX_("_logoGlow",f7,a2,29,b8),
	HX_("create",fc,66,0f,7c),
	HX_("destroy",fa,2c,86,24),
	HX_("update",09,86,05,87),
	::String(null()) };

::hx::Class FlxPreloader_obj::__mClass;

void FlxPreloader_obj::__register()
{
	FlxPreloader_obj _hx_dummy;
	FlxPreloader_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("flixel.system.FlxPreloader",91,e7,0e,e4);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(FlxPreloader_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< FlxPreloader_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = FlxPreloader_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = FlxPreloader_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace flixel
} // end namespace system
