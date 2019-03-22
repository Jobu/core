(function($){
	$.fn.et_simple_slider = function( options ) {
		var settings = $.extend( {
			slide         			: '.et-slide',				// slide class
			arrows					: '.et-slider-arrows',			// arrows container class
			prev_arrow				: '.et-arrow-prev',			// left arrow class
			next_arrow				: '.et-arrow-next',			// right arrow class
			controls 				: '.et-controllers a',			// control selector
			control_active_class	: 'et-active-control',			// active control class name
			previous_text			: 'Previous',				// previous arrow text
			next_text				: 'Next',				// next arrow text
			fade_speed				: 500,					// fade effect speed
			use_arrows				: true,					// use arrows?
			use_controls			: true,					// use controls?
			manual_arrows			: '',					// html code for custom arrows
			append_controls_to		: '',					// controls are appended to the slider element by default, here you can specify the element it should append to
			controls_class			: 'et-controllers',			// controls container class name
			slideshow				: false,				// automattic animation?
			slideshow_speed			: 7000,					// automattic animation speed
			on_slide_changing		: function(){},				// callback function that runs when a slide changes
			on_slide_change_end		: function(){}				// callback function that runs when a slide changes
		}, options );

		return this.each( function() {
			var $et_slider 			= $(this),
				$et_slide			= $et_slider.find( settings.slide ),
				et_slides_number	= $et_slide.length,
				et_fade_speed		= settings.fade_speed,
				et_active_slide		= 0,
				$et_slider_arrows,
				$et_slider_prev,
				$et_slider_next,
				$et_slider_controls,
				et_slider_timer,
				controls_html = '';

			if ( settings.use_arrows && et_slides_number > 1 ) {
				if ( settings.manual_arrows == '' )
					$et_slider.append( '<div class="et-slider-arrows"><a class="et-arrow-prev" href="#">' + settings.previous_text + '</a><a class="et-arrow-next" href="#">' + settings.next_text + '</a></div>' );
				else
					$et_slider.append( settings.manual_arrows );

				$et_slider_arrows 	= $( settings.arrows );
				$et_slider_prev 	= $et_slider_arrows.find( settings.prev_arrow );
				$et_slider_next 	= $et_slider_arrows.find( settings.next_arrow );

				$et_slider_next.click( function(){
					et_slider_move_to( 'previous' );

					return false;
				} );

				$et_slider_prev.click( function(){
					et_slider_move_to( 'next' );

					return false;
				} );
			}

			if ( settings.use_controls && et_slides_number > 1 ) {
				for ( var i = 1; i <= et_slides_number; i++ ) {
					controls_html += '<a href="#"' + ( i == 1 ? ' class="' + settings.control_active_class + '"' : '' ) + '>' + i + '</a>';
				}

				controls_html =
					'<div class="' + settings.controls_class + '">' +
						controls_html +
					'</div>';

				if ( settings.append_controls_to == '' )
					$et_slider.append( controls_html );
				else
					$( settings.append_controls_to ).append( controls_html );

				$et_slider_controls	= $et_slider.find( settings.controls ),

				$et_slider_controls.click( function(){
					et_slider_move_to( $(this).index() );

					return false;
				} );
			}

			et_slider_auto_rotate();

			function et_slider_auto_rotate(){
				if ( settings.slideshow && et_slides_number > 1 ) {
					et_slider_timer = setTimeout( function() {
						et_slider_move_to( 'next' );
					}, settings.slideshow_speed );
				}
			}

			function et_slider_move_to( direction ) {
				var $active_slide = $et_slide.eq( et_active_slide ),
					$next_slide;

				if ( direction == 'next' || direction == 'previous' ){

					if ( direction == 'next' )
						et_active_slide = ( et_active_slide + 1 ) < et_slides_number ? et_active_slide + 1 : 0;
					else
						et_active_slide = ( et_active_slide - 1 ) >= 0 ? et_active_slide - 1 : et_slides_number - 1;

				} else {

					if ( et_active_slide == direction ) return;

					et_active_slide = direction;

				}

				$next_slide	= $et_slide.eq( et_active_slide );

				if ( settings.use_controls && et_slides_number > 1 )
					$et_slider_controls.removeClass( settings.control_active_class ).eq( et_active_slide ).addClass( settings.control_active_class );

				if ( settings.on_slide_changing )
    				settings.on_slide_changing( $next_slide );

				$active_slide.animate( { opacity : 0 }, et_fade_speed, function(){
					$(this).css('display', 'none');

					$next_slide.css( { 'display' : 'block', opacity : 0 } ).animate( { opacity : 1 }, et_fade_speed, function(){
						if ( settings.on_slide_change_end )
    						settings.on_slide_change_end( $next_slide );
					} );
				} );

				if ( typeof et_slider_timer != 'undefined' ) {
					clearInterval( et_slider_timer );
					et_slider_auto_rotate();
				}
			}

			$.fn.et_simple_slider.external_move_to = function( slide ) {
				et_slider_move_to( slide );
			}
		} );
	}

	var et_window_width;

	$(document).ready( function(){
		var $et_top_menu = $('#menu-pages ul.level_1'),
			$featured_slider = $('#et-slider-wrapper'),
			$et_listings_item = $('#et-listings li'),
			$comment_form = $('form#commentform'),
			$et_list_view = $('#et-list-view'),
			$et_mobile_listings_item;

		et_window_width = $(window).width();

		$et_top_menu.superfish({
			delay		: 500, 										// one second delay on mouseout
			animation	: { opacity : 'show', height : 'show' },	// fade-in and slide-down animation
			speed		: 'fast', 									// faster animation speed
			cssArrows	: true, 									// disable generation of arrow mark-up
			dropShadows	: false										// disable drop shadows
		});

		if ( $('ul.disable_top_tier').length ) $("ul.disable_top_tier > li > ul").prev('a').attr('href','#');

		$('#left-area').fitVids();

		$('.et-place-main-text').tinyscrollbar({ invertscroll: true });

		$et_listings_item.find('.et-mobile-link').click( function( event ) {
			event.stopPropagation();
		} );

		$et_listings_item.click( function(){
			var $this_li = $(this);

			//if ( $this_li.hasClass( 'et-active-listing' ) ) return false;

			$this_li.siblings( '.et-active-listing' ).removeClass( 'et-active-listing' );

			$this_li.addClass( 'et-active-listing' );

			//$("#marker_pin_" + $this_li.index()).click();
			//triggerCustomClick("#marker_pin_" + $this_li.index());
			if (typeof $.fn.et_simple_slider.external_move_to === 'function') {
				$.fn.et_simple_slider.external_move_to( $this_li.index() );
			}
			
			$et_list_view.find( '.et-date' ).click();
		} );

		if ( $('#et-list-view.et-normal-listings').length ){
			$('#et-list-view.et-normal-listings').append( '<a href="#" class="et-date">' + et_custom.toggle_text + '</a>' );

			$et_list_view = $('#et-list-view.et-normal-listings');

			$et_list_view.find( '.et-date' ).click( function() {
				if ( $et_list_view.hasClass( 'et-listview-open' ) )
					$et_list_view.removeClass( 'et-listview-open' );
				else
					$et_list_view.addClass( 'et-listview-open' );

				return false;
			} );
		}

		if ( $featured_slider.length ){
			$featured_slider.et_simple_slider( {
				slide : '.et-map-slide',
				use_controls : false,
				on_slide_changing : function( $next_slide ){
					//$('#marker_pin_' + $next_slide.index()).click();
					//triggerCustomClick('#marker_pin_' + $next_slide.index());

					$et_listings_item.filter( '.et-active-listing' ).removeClass( 'et-active-listing' );
					$et_listings_item.eq( $next_slide.index() ).addClass( 'et-active-listing' );

					$et_mobile_listings_item.filter( '.et-active-listing' ).removeClass( 'et-active-listing' );
					$et_mobile_listings_item.eq( $next_slide.index() ).addClass( 'et-active-listing' );
				},
				on_slide_change_end : function( $next_slide ){
					if ( et_window_width >= 960 ) $('.et-place-main-text:visible').tinyscrollbar_update();

					$next_slide.siblings().removeClass( 'et-active-map-slide' );
					$next_slide.addClass( 'et-active-map-slide' );
				}
			} );

			$featured_slider.draggable();
			$featured_slider.draggable('option', 'cancel', '.track');
			$featured_slider.draggable('option', 'cancel', '.thumb');
		}

		$comment_form.find('input:text, textarea').each(function(index,domEle){
			var $et_current_input = jQuery(domEle),
				$et_comment_label = $et_current_input.siblings('label'),
				et_comment_label_value = $et_current_input.siblings('label').text();
			if ( $et_comment_label.length ) {
				$et_comment_label.hide();
				if ( $et_current_input.siblings('span.required') ) {
					et_comment_label_value += $et_current_input.siblings('span.required').text();
					$et_current_input.siblings('span.required').hide();
				}
				$et_current_input.val(et_comment_label_value);
			}
		}).bind('focus',function(){
			var et_label_text = jQuery(this).siblings('label').text();
			if ( jQuery(this).siblings('span.required').length ) et_label_text += jQuery(this).siblings('span.required').text();
			if (jQuery(this).val() === et_label_text) jQuery(this).val("");
		}).bind('blur',function(){
			var et_label_text = jQuery(this).siblings('label').text();
			if ( jQuery(this).siblings('span.required').length ) et_label_text += jQuery(this).siblings('span.required').text();
			if (jQuery(this).val() === "") jQuery(this).val( et_label_text );
		});

		// remove placeholder text before form submission
		$comment_form.submit(function(){
			$comment_form.find('input:text, textarea').each(function(index,domEle){
				var $et_current_input = jQuery(domEle),
					$et_comment_label = $et_current_input.siblings('label'),
					et_comment_label_value = $et_current_input.siblings('label').text();

				if ( $et_comment_label.length && $et_comment_label.is(':hidden') ) {
					if ( $et_comment_label.text() == $et_current_input.val() )
						$et_current_input.val( '' );
				}
			});
		});

		et_duplicate_menu( $et_top_menu, $('.mobile_nav'), 'mobile_menu', 'et_mobile_menu' );

		$('body').append( $('#et-list-view').clone().removeClass('et-normal-listings').addClass('et-mobile-listings') );
		$et_mobile_listings_item = $('.et-mobile-listings li');

		function et_duplicate_menu( menu, append_to, menu_id, menu_class ){
			var $cloned_nav;

			menu.clone().attr('id',menu_id).removeClass().attr('class',menu_class).appendTo( append_to );
			$cloned_nav = append_to.find('> ul');
			$cloned_nav.find('.menu_slide').remove();
			$cloned_nav.find('li:first').addClass('et_first_mobile_item');

			append_to.click( function(){
				if ( $(this).hasClass('closed') ){
					$(this).removeClass( 'closed' ).addClass( 'opened' );
					$cloned_nav.slideDown( 500 );					
				} else {
					$(this).removeClass( 'opened' ).addClass( 'closed' );
					$cloned_nav.slideUp( 500 );
				}
				return false;
			} );

			append_to.find('a').click( function(event){
				event.stopPropagation();
			} );
		}

		$et_mobile_listings_item.find('.mobile-link').click( function( event ) {
			event.stopPropagation();
		} );

		$et_mobile_listings_item.click( function(){
			var $this_li = $(this);

			if ( $this_li.hasClass( 'active-listing' ) ) return false;

			$this_li.siblings( '.active-listing' ).removeClass( 'active-listing' );

			$this_li.addClass( 'active-listing' );

			//$("#marker_pin_" + $this_li.index()).click();
			//triggerCustomClick("#marker_pin_" + $this_li.index());
		} );
	});

	function et_listing_make_fluid() {
		var $et_main_map = $( '#main_map' ),
			new_listing_height;

		//if ( $et_main_map.length ) {
			if ( et_window_width < 960 )
				new_listing_height = $('.et-normal-listings #et-listings .overview ul').height();
			else
				new_listing_height = $('.et-normal-listings').height() - 81;

			$('.et-normal-listings #et-listings, .et-normal-listings .viewport').height( new_listing_height );

			if($('.et-normal-listings #et-listings').length) {
				$('.et-normal-listings #et-listings').tinyscrollbar_update();
			}
		//}
	}

	$(window).load( function(){
		$('.et-normal-listings #et-listings').tinyscrollbar({ invertscroll: true });
		et_listing_make_fluid();
		/*if ( $("#main_map").length )
			$("#marker_pin_0").click();
		if ( $("#single-map").length )
			$("#marker_pin_0").click();*/
	} );

	var resizeTimer;
	$(window).on('resize', function () {
		if (resizeTimer) {
			clearTimeout(resizeTimer);
		}
		resizeTimer = setTimeout(function () {
			var $et_main_map = $( '#main_map' ),
			$et_single_map = $( '#single-map' );

			et_window_width = $(window).width();

			if(typeof et_active_marker !== "undefined") {
				if ( $et_main_map.length ) {
					var m = $et_main_map.gmap3("get");
					m.panTo( et_active_marker.position );

					if ( $('#et-slider-wrapper').is(":visible") ) {
						$('.et-place-main-text:visible').tinyscrollbar_update();
						m.panBy(100, -50);
					} else {
						m.panBy(0, -50);
					}

					et_listing_make_fluid();
				}

				if ( $et_single_map.length ) {
					var m = $et_single_map.gmap3("get");
					m.panTo( et_active_marker.position );
					m.panBy(100, -50);
				}
			}

		}, 50);
	});	
})(jQuery)

function triggerCustomClick(selector) {
	var userAgent = navigator.userAgent.toLowerCase();
	if(userAgent.indexOf('chrome') == -1 && userAgent.indexOf('safari') > -1) {
		var elm = jQuery(selector)[0];
		var evObj = document.createEvent('MouseEvents');
		evObj.initMouseEvent('click', true, true, window);
		elm.dispatchEvent(evObj);
	} else {
		jQuery(selector).click();
	}
}
