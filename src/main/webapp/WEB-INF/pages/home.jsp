<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>橡果国际有限公司客户管理系统</title>
<link rel="stylesheet" href="http://v1.caoer.top/css/sidebar.css">
<link rel="stylesheet" href="http://v1.caoer.top/css/normalize.css">
<!-- 如果有强迫症，请务必将font-awesome.css完整下载引用，否则控制台会报错 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet" href="http://v1.caoer.top/css/demo.css">
<link rel="stylesheet" href="http://v1.caoer.top/css/style.css">
<script src="http://v1.caoer.top/js/snap.svg-min.js"></script>

<link rel='stylesheet' href='http://v1.caoer.top/css/animate.min.css'>
<link rel="stylesheet" href="http://v1.caoer.top/css/default.css">
</head>
<body>
	<nav id="menu" class="menu">
		<button class="menu__handle"><span>Menu</span></button>
		<div class="menu__inner">
			<ul>
				<li><a href="#">首页</a></li>
                <li><a href="">公司管理</a></li>
                <li><a href="">客户管理</a></li>
                <li><a href="">订单管理</a></li>
                <li><a href="">权限管理</a></li>
                <li><a href="">系统功能</a></li>
			</ul>
		</div>
		<div class="morph-shape" data-morph-open="M300-10c0,0,295,164,295,410c0,232-295,410-295,410" data-morph-close="M300-10C300-10,5,154,5,400c0,232,295,410,295,410">
			<svg width="100%" height="100%" viewBox="0 0 600 800" preserveAspectRatio="none">
			<path fill="none" d="M300-10c0,0,0,164,0,410c0,232,0,410,0,410" />
			</svg>
		</div>
	</nav>
	<div class="main">
		<header class="codrops-header"></header>
	</div>

	<div id="particles-js"></div>
	<div class="box">
		<h1 id="word">客户的需要就是我们无上的追求！</h1>
		<span id="author">橡果国际有限公司</span>
	</div>


	<div class="htmleaf-container">
		<div id='ss_menu'>
			<div>
				<i class="fa fa-qq"></i>
			</div>
			<div>
				<i class="fa fa-weibo"></i>
			</div>
			<div>
				<i class="fa fa-weixin"></i>
			</div>
			<div>
				<i class="fa fa-renren"></i>
			</div>
			<div class='menu1'>
				<div class='share' id='ss_toggle' data-rot='180'>
					<div class='circle'></div>
					<div class='bar'></div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="http://v1.caoer.top/js/particles.min.js"></script>
<script src="http://v1.caoer.top/js/app.js"></script>
<script src="http://v1.caoer.top/js/classie.js"></script>
<script src="http://v1.caoer.top/js/jquery.min.js"></script>
<script>
	(function() {
		$(".fa-qq").click(function(){
			window.open("https://www.baidu.com/");
		})
		$(".fa-weibo").click(function(){
			window.open("https://www.baidu.com/");
		})
		$(".fa-renren").click(function(){
			window.open("https://www.baidu.com/");
		})
		$(".fa-weixin").click(function(){
			window.open("https://www.baidu.com/");
		})
		function SVGMenu( el, options ) {
			this.el = el;
			this.init();
		}

		SVGMenu.prototype.init = function() {
			this.trigger = this.el.querySelector( 'button.menu__handle' );
			this.shapeEl = this.el.querySelector( 'div.morph-shape' );

			var s = Snap( this.shapeEl.querySelector( 'svg' ) );
			this.pathEl = s.select( 'path' );
			this.paths = {
				reset : this.pathEl.attr( 'd' ),
				open : this.shapeEl.getAttribute( 'data-morph-open' ),
				close : this.shapeEl.getAttribute( 'data-morph-close' )
			};

			this.isOpen = false;

			this.initEvents();
		};

		SVGMenu.prototype.initEvents = function() {
			this.trigger.addEventListener( 'click', this.toggle.bind(this) );
		};

		SVGMenu.prototype.toggle = function() {
			var self = this;

			if( this.isOpen ) {
				classie.remove( self.el, 'menu--anim' );
				setTimeout( function() { classie.remove( self.el, 'menu--open' );	}, 250 );
			}
			else {
				classie.add( self.el, 'menu--anim' );
				setTimeout( function() { classie.add( self.el, 'menu--open' );	}, 250 );
			}
			this.pathEl.stop().animate( { 'path' : this.isOpen ? this.paths.close : this.paths.open }, 350, mina.easeout, function() {
				self.pathEl.stop().animate( { 'path' : self.paths.reset }, 800, mina.elastic );
			} );
			
			this.isOpen = !this.isOpen;
		};

		new SVGMenu( document.getElementById( 'menu' ) );

		/*$.ajax({
		    url: "https://v1.hitokoto.cn",
		    dataType: "json",
		    async:false,
		    success:function(data){
		        // $("p").append(data + "<br />");
		        $('#word').text(data.hitokoto);
		        $('#author').text("— " + data.creator);
		        console.log(data);
		    }
		});*/
	})();

$(document).ready(function (ev) {
    var toggle = $('#ss_toggle');
    var menu = $('#ss_menu');
    var rot;
    $('#ss_toggle').on('click', function (ev) {
        rot = parseInt($(this).data('rot')) - 180;
        menu.css('transform', 'rotate(' + rot + 'deg)');
        menu.css('webkitTransform', 'rotate(' + rot + 'deg)');
        if (rot / 180 % 2 == 0) {
            toggle.parent().addClass('ss_active');
            toggle.addClass('close');
        } else {
            toggle.parent().removeClass('ss_active');
            toggle.removeClass('close');
        }
        $(this).data('rot', rot);
    });
    menu.on('transitionend webkitTransitionEnd oTransitionEnd', function () {
        if (rot / 180 % 2 == 0) {
            $('#ss_menu div i').addClass('ss_animate');
        } else {
            $('#ss_menu div i').removeClass('ss_animate');
        }
    });
});
</script>
</html>