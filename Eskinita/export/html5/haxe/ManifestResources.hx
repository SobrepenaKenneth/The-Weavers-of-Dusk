package;

import haxe.io.Bytes;
import haxe.io.Path;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

			if(!StringTools.endsWith (rootPath, "/")) {

				rootPath += "/";

			}

		}

		if (rootPath == null) {

			#if (ios || tvos || webassembly)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif (console || sys)
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_blocktopia_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_blocktopia_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_shpinscher_regular_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_blocktopia_ttf1);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_shpinscher_regular_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		data = '{"name":null,"assets":"aoy4:sizei21668y4:typey4:FONTy9:classNamey36:__ASSET__assets_fonts_blocktopia_ttfy2:idy31:assets%2Ffonts%2Fblocktopia.ttfy7:preloadtgoR0i21668R1R2R3y29:__ASSET__fonts_blocktopia_ttfR5y22:fonts%2Fblocktopia.ttfR7tgoR0i180932R1R2R3y37:__ASSET__fonts_shpinscher_regular_otfR5y30:fonts%2FSHPinscher-Regular.otfR7tgoy4:pathy34:assets%2Fdata%2Fdata-goes-here.txtR0zR1y4:TEXTR5R13R7tgoR0i21668R1R2R3y37:__ASSET__assets_fonts_blocktopia_ttf1R5R6R7tgoR0i180932R1R2R3y44:__ASSET__assets_fonts_shpinscher_regular_otfR5y39:assets%2Ffonts%2FSHPinscher-Regular.otfR7tgoR12y28:assets%2Fimages%2Famihan.pngR0i105130R1y5:IMAGER5R18R7tgoR12y33:assets%2Fimages%2FAmihan_0000.pngR0i12162R1R19R5R20R7tgoR12y36:assets%2Fimages%2Fimages-go-here.txtR0zR1R14R5R21R7tgoR12y37:assets%2Fimages%2FPlaceholderArt1.pngR0i35040R1R19R5R22R7tgoR0i1743577R1y5:MUSICR5y29:assets%2Fmusic%2FEskinita.oggy9:pathGroupaR24hR7tgoR0i1959105R1R23R5y32:assets%2Fmusic%2Flight-10465.oggR25aR26hR7tgoR12y36:assets%2Fmusic%2Fmusic-goes-here.txtR0zR1R14R5R27R7tgoR0i1835502R1R23R5y27:assets%2Fmusic%2Fpiano1.oggR25aR28hR7tgoR0i4290474R1R23R5y26:assets%2Fmusic%2Ftakbo.oggR25aR29hR7tgoR0i162829R1y5:SOUNDR5y26:assets%2Fmusic%2Fwaves.oggR25aR31hR7tgoR12y36:assets%2Fsounds%2Fsounds-go-here.txtR0zR1R14R5R32R7tgoR12y15:assets%2Fui.xmlR0i5394R1R14R5R33R7tgoR0i8220R1R23R5y26:flixel%2Fsounds%2Fbeep.mp3R25aR34y26:flixel%2Fsounds%2Fbeep.ogghR7tgoR0i39706R1R23R5y28:flixel%2Fsounds%2Fflixel.mp3R25aR36y28:flixel%2Fsounds%2Fflixel.ogghR7tgoR0i6840R1R30R5R35R25aR34R35hgoR0i33629R1R30R5R37R25aR36R37hgoR0i15744R1R2R3y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR7tgoR0i29724R1R2R3y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR7tgoR12y33:flixel%2Fimages%2Fui%2Fbutton.pngR0i222R1R19R5R42R7tgoR12y36:flixel%2Fimages%2Flogo%2Fdefault.pngR0i484R1R19R5R43R7tgoR12y42:flixel%2Fimages%2Ftransitions%2Fcircle.pngR0i299R1R19R5R44R7tgoR12y53:flixel%2Fimages%2Ftransitions%2Fdiagonal_gradient.pngR0i730R1R19R5R45R7tgoR12y43:flixel%2Fimages%2Ftransitions%2Fdiamond.pngR0i236R1R19R5R46R7tgoR12y42:flixel%2Fimages%2Ftransitions%2Fsquare.pngR0i209R1R19R5R47R7tgoR12y21:assets%2Fui_atlas.pngR0i4803R1R19R5R48R7tgoR12y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR0i75R1R19R5R49R7tgoR12y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR0i211R1R19R5R50R7tgoR12y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR0i216R1R19R5R51R7tgoR12y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR0i222R1R19R5R52R7tgoR12y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR0i238R1R19R5R53R7tgoR12y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR0i227R1R19R5R54R7tgoR12y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR0i118R1R19R5R55R7tgoR12y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR0i254R1R19R5R56R7tgoR12y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR0i101R1R19R5R57R7tgoR12y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR0i97R1R19R5R58R7tgoR12y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR0i135R1R19R5R59R7tgoR12y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR0i124R1R19R5R60R7tgoR12y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR0i102R1R19R5R61R7tgoR12y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR0i118R1R19R5R62R7tgoR12y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR0i86R1R19R5R63R7tgoR12y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR0i1337R1R19R5R64R7tgoR12y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR0i157R1R19R5R65R7tgoR12y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR0i74R1R19R5R66R7tgoR12y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR0i72R1R19R5R67R7tgoR12y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR0i77R1R19R5R68R7tgoR12y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR0i83R1R19R5R69R7tgoR12y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR0i108R1R19R5R70R7tgoR12y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR0i81R1R19R5R71R7tgoR12y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR0i94R1R19R5R72R7tgoR12y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR0i106R1R19R5R73R7tgoR12y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR0i111R1R19R5R74R7tgoR12y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR0i176R1R19R5R75R7tgoR12y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR0i1263R1R14R5R76R7tgoR12y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR0i1953R1R14R5R77R7tgoR12y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR0i1848R1R14R5R78R7tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

	}


}

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_blocktopia_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_blocktopia_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_shpinscher_regular_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_blocktopia_ttf1 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_shpinscher_regular_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_amihan_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_amihan_0000_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_placeholderart1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_eskinita_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_light_10465_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_piano1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_takbo_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_waves_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_ui_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_ui_atlas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:font("export/html5/obj/webfont/blocktopia.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_blocktopia_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/blocktopia.ttf") @:noCompletion #if display private #end class __ASSET__fonts_blocktopia_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/SHPinscher-Regular.otf") @:noCompletion #if display private #end class __ASSET__fonts_shpinscher_regular_otf extends lime.text.Font {}
@:keep @:file("assets/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/blocktopia.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_blocktopia_ttf1 extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/SHPinscher-Regular.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_shpinscher_regular_otf extends lime.text.Font {}
@:keep @:image("assets/images/amihan.png") @:noCompletion #if display private #end class __ASSET__assets_images_amihan_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Amihan_0000.png") @:noCompletion #if display private #end class __ASSET__assets_images_amihan_0000_png extends lime.graphics.Image {}
@:keep @:file("assets/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/PlaceholderArt1.png") @:noCompletion #if display private #end class __ASSET__assets_images_placeholderart1_png extends lime.graphics.Image {}
@:keep @:file("assets/music/Eskinita.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_eskinita_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/light-10465.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_light_10465_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/music-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/music/piano1.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_piano1_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/takbo.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_takbo_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/waves.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_waves_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/ui.xml") @:noCompletion #if display private #end class __ASSET__assets_ui_xml extends haxe.io.Bytes {}
@:keep @:file("C:/haxeflixel/flixel/6,1,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/haxeflixel/flixel/6,1,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/haxeflixel/flixel/6,1,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/haxeflixel/flixel/6,1,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/haxeflixel/flixel/6,1,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel/6,1,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-addons/3,3,2/assets/images/transitions/circle.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-addons/3,3,2/assets/images/transitions/diagonal_gradient.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-addons/3,3,2/assets/images/transitions/diamond.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-addons/3,3,2/assets/images/transitions/square.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/djFlixel/git/assets/ui_atlas.png") @:noCompletion #if display private #end class __ASSET__assets_ui_atlas_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("C:/haxeflixel/flixel-ui/2,6,4/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:file("C:/haxeflixel/flixel-ui/2,6,4/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("C:/haxeflixel/flixel-ui/2,6,4/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("C:/haxeflixel/flixel-ui/2,6,4/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_blocktopia_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_blocktopia_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/blocktopia"; #else ascender = 768; descender = -256; height = 1116; numGlyphs = 196; underlinePosition = -153; underlineThickness = 51; unitsPerEM = 1024; #end name = "Blocktopia"; super (); }}
@:keep @:expose('__ASSET__fonts_blocktopia_ttf') @:noCompletion #if display private #end class __ASSET__fonts_blocktopia_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/blocktopia"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Blocktopia"; super (); }}
@:keep @:expose('__ASSET__fonts_shpinscher_regular_otf') @:noCompletion #if display private #end class __ASSET__fonts_shpinscher_regular_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/SHPinscher-Regular"; #else ascender = 960; descender = -240; height = 1200; numGlyphs = 1242; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "SH Pinscher Regular"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_blocktopia_ttf1') @:noCompletion #if display private #end class __ASSET__assets_fonts_blocktopia_ttf1 extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/blocktopia"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Blocktopia"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_shpinscher_regular_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_shpinscher_regular_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/SHPinscher-Regular"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "SH Pinscher Regular"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_blocktopia_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_blocktopia_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_blocktopia_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_blocktopia_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_blocktopia_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_blocktopia_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_shpinscher_regular_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_shpinscher_regular_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_shpinscher_regular_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_blocktopia_ttf1') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_blocktopia_ttf1 extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_blocktopia_ttf1 ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_shpinscher_regular_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_shpinscher_regular_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_shpinscher_regular_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_blocktopia_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_blocktopia_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_blocktopia_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_blocktopia_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_blocktopia_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_blocktopia_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_shpinscher_regular_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_shpinscher_regular_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_shpinscher_regular_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_blocktopia_ttf1') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_blocktopia_ttf1 extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_blocktopia_ttf1 ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_shpinscher_regular_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_shpinscher_regular_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_shpinscher_regular_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end