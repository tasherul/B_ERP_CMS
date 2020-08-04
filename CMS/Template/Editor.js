
var barhtml = "<div id='xx' style='width: 100%; height: 100px; background-color: rgb(66, 127, 255);'> {0}[image][notification][masseging][profile] </div>";

window.addEventListener("load", function () {
    var _HeaderFream = this.document.getElementById('HeaderFrame');
    var _txtHeaderHtml = this.document.getElementById('txtHeaderHtml');
    _txtHeaderHtml.style.visibility = "hidden";
    _txtHeaderHtml.style.display = "none";
    var _NavFream = this.document.getElementById('NavFrame');
    var _txtNavHtml = this.document.getElementById('txtNavHtml');
    _txtNavHtml.style.visibility = "hidden";
    _txtNavHtml.style.display = "none";
    var nv = NavFrame.document;
    showHeaderHtml();
    ShowVarticalHtml(false);
    ShowIcon(false);

    //document.getElementById('HeaderFrame').contentWindow.document.body.innerHTML = barhtml;
    //var _headerbar = this.document.getElementById('headerbar');
    //_headerbar.style.display = "none";
    //_headerbar.visibility = "hidden";


    HeaderFrame.addEventListener("click", function () {
        _headerbar.style.display = "inherit";
        _headerbar.visibility = "visible";
    }, false);

    btnBold.addEventListener("click", function () {
        nv.execCommand("Bold", false, null);
    }, false);

    btnItalic.addEventListener("click", function () {
        nv.execCommand("Italic", false, null);
    }, false);

    btnUnderline.addEventListener("click", function () {
        nv.execCommand("Underline", false, null);
    }, false);

    btnfontColor.addEventListener("change", function (event) {
        nv.execCommand("ForeColor", false, event.target.value);
    }, false);

    btnhighlight.addEventListener("change", function (event) {
        nv.execCommand("BackColor", false, event.target.value);
    }, false);

    fontSizeChanger.addEventListener("change", function (event) {
        nv.execCommand("FontSize", false, event.target.value);
    }, false);

    btnLink.addEventListener("click", function () {
        var url = prompt("Enter a URL", "http://");
        nv.execCommand("CreateLink", false, null);
    }, false);

    btnUnLink.addEventListener("click", function (event) {
        nv.execCommand("UnLink", false, null);
    }, false);

    btnUndo.addEventListener("click", function (event) {
        nv.execCommand("undo", false, null);
    }, false);

    btnRedo.addEventListener("click", function (event) {
        nv.execCommand("redo", false, null);
    }, false);

    //boldButton.addEventListener("click", function () {
    //    //var Code = document.getElementById('theWYSIWYG').srcdoc;
    //    //document.getElementById('HtmlShow').value = Code;
    //    editor.execCommand("Bold", false, null);

    //}, false);
    //check.addEventListener("click", function () {
    //    document.getElementById('HtmlShow').value = editor;
    //});
    NavFrame_On();
    HeaderFrame_On();
   
}, false);

function HeaderFrame_On() {
    var headerfream = HeaderFrame.document;
    headerfream.designMode = "on";
}
function NavFrame_On() {
    var navfream = NavFrame.document;
    navfream.designMode = "on";
}
function ShowIcon(vartical) {
    if (vartical) {
        var Icon = this.document.getElementById('Icon');
        Icon.className = "fa fa-toggle-on";
    }
    else {
        var Icon = this.document.getElementById('Icon');
        Icon.className = "fa fa-toggle-off";
    }
}
function changeBar() {
    var Icon = this.document.getElementById('Icon');
    if (Icon.className == "fa fa-toggle-off") {
        ShowIcon(true);
        ShowVarticalHtml(true);
    }
    else {
        ShowIcon(false);
        ShowVarticalHtml(false);
    }


}

function refersh() {
    var editor = document.getElementById('txtHeaderHtml').value;
    document.getElementById('HeaderFrame').srcdoc = editor;
}
function refershNav() {
    var nav = document.getElementById('txtNavHtml').value;
    document.getElementById('NavFrame').srcdoc = nav;
}

var Float = document.getElementById('txtFloat');
var FontSize = document.getElementById('txtFontSize');
var Width = document.getElementById('txtWidth');
var Height = document.getElementById('txtHeight');
var Margin = document.getElementById('txtMargin');
var Padding = document.getElementById('txtPadding');
var BackgroundColor = document.getElementById('txtBackgroundColor');
var Color = document.getElementById('txtColor');
var src = document.getElementById('txtsrc');
var BorderRadius = document.getElementById('txtBorderRadius');
var href = document.getElementById('txthref');
var from = document.getElementById('from');
var HoverColor = document.getElementById('txtHoverColor');
var HoverbgColor = document.getElementById('txtHoverbgColor');


function ShowheaderHtml() {
    var x = document.getElementById("txtHeaderHtml");
    var _HeaderFrame = document.getElementById("HeaderFrame");
    if (window.getComputedStyle(x).visibility === "hidden") {
        x.style.visibility = "visible";
        x.style.display = "inherit";
        _HeaderFrame.style.visibility = "hidden";
        _HeaderFrame.style.display = "none";
    }
    else if (window.getComputedStyle(x).visibility === "visible") {
        x.style.visibility = "hidden";
        x.style.display = "none";
        _HeaderFrame.style.visibility = "visible";
        _HeaderFrame.style.display = "inherit";
    }
    x.value = document.getElementById('HeaderFrame').contentWindow.document.body.innerHTML;
    HeaderFrame_On();
}
function ShowNavHtml() {
    var x = document.getElementById("txtNavHtml");
    var _NavFrame = document.getElementById("NavFrame");
    if (window.getComputedStyle(x).visibility === "hidden") {
        x.style.visibility = "visible";
        x.style.display = "inherit";
        _NavFrame.style.visibility = "hidden";
        _NavFrame.style.display = "none";
    }
    else if (window.getComputedStyle(x).visibility === "visible") {
        x.style.visibility = "hidden";
        x.style.display = "none";
        _NavFrame.style.visibility = "visible";
        _NavFrame.style.display = "inherit";
    }
    var Html = document.getElementById('NavFrame').contentWindow.document.body.innerHTML;
    
    x.value = Html;
    NavFrame_On();
}
var M_header;
function showHeaderHtml() {

    var Header_Image = "<div id='image' style='float:" + HeaderBar_Logo_Css_Float + ";width:" + HeaderBar_Logo_Css_Width + "; height:" + HeaderBar_Logo_Css_Heigh + "; margin:" + HeaderBar_Logo_Css_Margin + ";' >\
            <a href='"+ HeaderBar_Logo_Css_href + "'><img  style='border-radius:" + HeaderBar_Logo_Css_BorderRadius + "; width:" + HeaderBar_Logo_Css_Width + "; height:" + HeaderBar_Logo_Css_Heigh + "; background-color:" + HeaderBar_Logo_Css_backgroundColor + ";' alt='{1}' src='" + HeaderBar_Logo_Css_Src +"' /></a>\
        </div>";

    var Header_Scarch = "<div id='scarch' style='float:" + HeaderBar_ScarchIteam_CSS_Float + "; color:" + HeaderBar_ScarchIteam_CSS_Color + "; font-size:" + HeaderBar_ScarchIteam_CSS_FontSize + "; margin:" + HeaderBar_ScarchIteam_CSS_Margin + "; '>\
            <input id='Text1' style='width:"+ HeaderBar_ScarchIteam_CSS_Width + ";height:" + HeaderBar_ScarchIteam_CSS_Height +";' placeholder='Scarch iteam...' type='text' />\
            <button type='button' style='height: 35px; width:30px;'><i class='fa fa-search'></i></button>\
        </div>";
    var Notification_Body = "<div id='notification' style=' float:" + HeaderBar_Notification_Css_Float + "; color:" + HeaderBar_Notification_Css_Color + "; font-size:" + HeaderBar_Notification_Css_FontSize + "; margin:" + HeaderBar_Notification_Css_Margin + "; '>\
            <a href='"+ HeaderBar_Notification_Css_href + "' style='background-color:" + HeaderBar_Notification_Css_backgroundcolor + "; color:" + HeaderBar_Notification_Css_Color + "; text-decoration: none; padding:" + HeaderBar_Notification_Css_padding + "; position: relative; display: inline-block; border-radius:" + HeaderBar_Notification_Css_BorderRadius + ";'>\
                <span><i class='fa fa-bell'></i></span>\
                <span style=' position: absolute; top: -10px; right: -10px; padding: 5px 10px; border-radius: 50%; background: red; color:"+ HeaderBar_Notification_Css_Color +";'>3</span>\
            </a>\
        </div>";
    var Header_Notification = Notification_Body+"\
        <a href = 'http://google.com' class='dropdown-item notify-item' style = 'visibility:hidden;display:none;' >\
        <div class='notify-icon bg-danger'><i class='fa fa-user'></i></div >\
            <p class='notify-details'>Title<small class='text-muted'>dateTime</small></p>\
        </a>";
    var Messege_Body = "<div id='messages' style='float:" + HeaderBar_Message_Css_Float + "; color:" + HeaderBar_Message_Css_Color + "; font-size:" + HeaderBar_Message_Css_FontSize + "; margin:" + HeaderBar_Message_Css_Margin + "; '>\
            <a href='"+ HeaderBar_Message_Css_href + "' style='background-color:" + HeaderBar_Message_Css_backgroundcolor + "; color: " + HeaderBar_Message_Css_Color + "; text-decoration: none; padding:" + HeaderBar_Message_Css_padding + "; position: relative; display: inline-block; border-radius:" + HeaderBar_Message_Css_BorderRadius + ";'>\
                <span><i class='fa fa-envelope-o'></i></span>\
                <span style=' position: absolute; top: -10px; right: -10px; padding: 5px 10px; border-radius: 50%; background: red; color: "+ HeaderBar_Message_Css_Color +";'>3</span>\
            </a>\
        </div>";
    var Header_Message = Messege_Body+" \
        <a href = 'http://google.com' class='dropdown-item notify-item' style = 'visibility:hidden;display:none;' >\
        <div class='notify-icon bg-danger'><i class='fa fa-user'></i></div >\
            <p class='notify-details'>Title<small class='text-muted'>dateTime</small></p>\
        </a>";

    var Header_Profile = " <div id='profile' style='float:" + HeaderBar_Profile_Css_Float + "; width:" + HeaderBar_Profile_Css_Width + "; height:" + HeaderBar_Profile_Css_Heigh + "; margin:" + HeaderBar_Profile_Css_Margin + "; '>\
            <a href='"+ HeaderBar_Profile_Css_href + "'><img style='border-radius:" + HeaderBar_Profile_Css_BorderRadius + "; width:" + HeaderBar_Profile_Css_Width + "; height:" + HeaderBar_Profile_Css_Heigh + "; background-color:" + HeaderBar_Profile_Css_backgroundColor + ";' src='" + HeaderBar_Profile_Css_Src +"' /></a>Name\
        </div>";

    //document.getElementById('HeaderFrame').contentWindow.document.head.innerHTML 
    var head= "<link href='../../assets/vendors/font-awesome/css/font-awesome.min.css' rel='stylesheet' />";
    var Main_Header = "<div style = 'background-color:" + HeaderBar_Main_Css_backgroundColor + "; width:" + HeaderBar_Main_Css_Width + "; height:" + HeaderBar_Main_Css_Height +";'>";
    var HTML = "\
            "+ Main_Header+"\
            "+ Header_Image + "\
            "+ Header_Scarch +"\
            "+ Header_Notification+"\
            "+ Header_Message +"\
            "+ Header_Profile +"\
        </div> ";
    document.getElementById('HeaderFrame').contentWindow.document.body.innerHTML = head+HTML;
    M_header = Main_Header;
    var txtHeaderImageControl = document.getElementById('txtHeaderImageControl');
    var txtHeaderScarchControl = document.getElementById('txtHeaderScarchControl');
    var txtNotificationControl = document.getElementById('txtNotificationControl');
    var txtMessegeControl = document.getElementById('txtMessegeControl');
    var txtProfileControl1 = document.getElementById('txtProfileControl1');
    var txtProfileControl2 = document.getElementById('txtProfileControl2');
    var txtMessegeControlBody = document.getElementById('txtMessegeControlBody');
    var txtSrcLogo = document.getElementById('txtSrcLogo');
    var txtSrcProfileImage = document.getElementById('txtSrcProfileImage');

    _HeaderBar_Logo_Css_href = "{2}";
    _HeaderBar_Logo_Css_Src = "{0}";
    var _Header_Image = "<div id='image' style='float:" + HeaderBar_Logo_Css_Float + ";width:" + HeaderBar_Logo_Css_Width + "; height:" + HeaderBar_Logo_Css_Heigh + "; margin:" + HeaderBar_Logo_Css_Margin + ";' >\
            <a href='"+ _HeaderBar_Logo_Css_href + "'><img  style='border-radius:" + HeaderBar_Logo_Css_BorderRadius + "; width:" + HeaderBar_Logo_Css_Width + "; height:" + HeaderBar_Logo_Css_Heigh + "; background-color:" + HeaderBar_Logo_Css_backgroundColor + ";' alt='{1}' src='" + _HeaderBar_Logo_Css_Src + "' /></a>\
        </div>";
    txtHeaderImageControl.value = _Header_Image;
    txtHeaderScarchControl.value = Header_Scarch + Notification_Body;
    txtNotificationControl.value = "<a href='{0}' class='dropdown-item notify-item' style = 'visibility:hidden;display:none;'>\
        <div class='notify-icon bg-danger'> {1}</div >\
            <p class='notify-details'>{2}<small class='text-muted'>{3}</small></p>\
        </a>";
    txtMessegeControlBody.value = Messege_Body;
    txtMessegeControl.value = "<a href='{0}' class='dropdown-item notify-item' style = 'visibility:hidden;display:none;'>\
        <div class='notify-icon bg-danger'> {1}</div>\
            <p class='notify-details'>{2}<small class='text-muted'>{3}</small></p>\
        </a>";

    var _Header_Profile_1 = " <div id='profile' style='float:" + HeaderBar_Profile_Css_Float + "; width:" + HeaderBar_Profile_Css_Width + "; height:" + HeaderBar_Profile_Css_Heigh + "; margin:" + HeaderBar_Profile_Css_Margin + "; '>\
            <a href='#'><img style='border-radius:" + HeaderBar_Profile_Css_BorderRadius + "; width:" + HeaderBar_Profile_Css_Width + "; height:" + HeaderBar_Profile_Css_Heigh + "; background-color:" + HeaderBar_Profile_Css_backgroundColor + ";' src='{0}' alt='{1}' /></a>{1}\
        </div>{2}";
    txtProfileControl1.value = _Header_Profile_1;
    txtProfileControl2.value = "<a style='visibility:hidden;display:none;' class='dropdown-item' href='{0}'>{1}</a> ";
    txtSrcLogo.value = HeaderBar_Logo_Css_Src;
    txtSrcProfileImage.value = HeaderBar_Profile_Css_Src;
} 


function ShowVarticalHtml(vartical) {
    var mainBody = "<div class='main'>\
            <h2> Sidebar Dropdown</h2>\
            <p>Click on the dropdown button to open the dropdown menu inside the side navigation.</p>\
            <p>This sidebar is of full height (100%) and always shown.</p>\
            <p>Some random text..</p></div>";

    var mainCss = "";
    var mainHtml = "";
    var Script = "";
    var Footer = "<footer style='position: fixed;\
    left: 0;\
    bottom: 0;\
    width: "+ Footer_CSS_Width+";\
    background-color: "+ Footer_CSS_BackgroundColor+";\
    color: "+ Footer_CSS_Color+";\
    text-align: "+ Footer_CSS_Float+";'>\
    <p> Copyrights  &#169; by B-CMS-ERP. </p >\
</footer>";
    if (!vartical) {
        mainCss = " <style>\
.navbar {\
    overflow: hidden;\
    background-color: "+ HorizontalNav_BackgroundColor + ";\
        height:"+ HorizontalNav_Height + ";\
        width:"+ HorizontalNav_Width +";\
}\
.navbar a {\
    float: "+ HorizontalNav_float + ";\
    font-size: "+ HorizontalNav_fontsize + ";\
    color: "+ HorizontalNav_color + ";\
    text-align: center;\
    padding: "+ HorizontalNav_padding + ";\
    text-decoration: none;\
}\
.dropdown {\
    float: "+ HorizontalNav_float + ";\
    overflow: hidden;\
}\
.dropdown .dropbtn {\
    font-size: "+ HorizontalNav_fontsize + ";\
    border: none;\
    outline: none;\
    color: "+ HorizontalNav_color + ";\
    padding: "+ HorizontalNav_padding + ";\
    background-color: inherit;\
    font-family: inherit;\
    margin: 0;\
}\
.navbar a:hover, .dropdown:hover .dropbtn {\
    background-color: "+ HorizontalNav_hover_up_BackgroundColor + ";\
}\
.dropdown-content {\
    display: none;\
    position: absolute;\
    background-color: #f9f9f9;\
    min-width: 160px;\
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);\
    z-index: 1;\
}\
.dropdown-content a {\
    float: none;\
    color: black;\
    padding: 12px 16px;\
    text-decoration: none;\
    display: block;\
    text-align: left;\
}\
.dropdown-content a:hover {\
    background-color: "+ HorizontalNav_hover_down_BackgroundColor + ";\
}\
.dropdown:hover .dropdown-content {\
    display: block;\
}\
    </style> ";

        mainHtml = "<div class='navbar'>\
        <a href = '#home'> Home</a>\
            <a href='#news'>News</a>\
            <div class='dropdown'>\
                <button class='dropbtn'>\
                    Dropdown\
                <i class='fa fa-caret-down'></i>\
                </button>\
                <div class='dropdown-content'>\
                    <a href='#'>Link 1</a>\
                    <a href='#'>Link 2</a>\
                    <a href='#'>Link 3</a>\
                </div>\
            </div>\
    </div>";
        var txtMainControl = document.getElementById('txtMainControl');
        var txtBarSection1 = document.getElementById('txtBarSection1');
        var txtBarSection2 = document.getElementById('txtBarSection2');
        var txtFooter = document.getElementById('txtFooter');
        txtMainControl.value = M_header + "{0}" + mainCss + "<div class='navbar'>{1}</div>{2}{3}</div>";
        txtBarSection1.value = "<div class='dropdown'>\
                <button onclick='{0}' class='dropbtn'>\
                    {1}\
                <i class='fa fa-caret-down'></i>\
                </button>\
                <div class='dropdown-content'>\
                    {2}\
                </div>\
            </div>";
        txtBarSection2.value = "<a href='{0}'> {1}</a>";
        txtFooter.value = Footer;
    }
    else {
        mainCss = "<style>\
.sidenav {\
            height:"+ VarticalNav_Height + ";\
            width: "+ VarticalNav_Width +";\
            position: fixed;\
            z-index: 1;\
            top: 0;\
            left: 0;\
            background-color: "+ VarticalNav_BackgroundColor +";\
            overflow-x: hidden;\
            padding-top: 20px;\
        }\
.sidenav a, .dropdown-btn {\
            padding: "+ VarticalNav_Padding +";\
            text-decoration: none;\
            font-size: "+ VarticalNav_FontSize + ";\
            color: "+ VarticalNav_Color +";\
            display: block;\
            border: none;\
            background: none;\
            width: 100%;\
            text-align: left;\
            cursor: pointer;\
            outline: none;\
        }\
.sidenav a:hover, .dropdown-btn:hover {\
            color: "+ VarticalNav_Hover_Color +";\
        }\
.main {\
            margin-left: 200px;\
            font-size: "+ VarticalNav_FontSize +";\
            padding: 0px 10px;\
        }\
.active {\
            background-color: "+ VarticalNav_Hover_BackgroundColor + ";\
            color: "+ VarticalNav_Color +";\
        }\
.dropdown-container {\
            display: none;\
            background-color: "+ VarticalNav_BackgroundColor +";\
            padding-left: 8px;\
        }\
.fa-caret-down {\
            float: "+ VarticalNav_Float +";\
            padding-right: 8px;\
        }\
        @media screen and(max-height: 450px) {\
            .sidenav {\
                padding-top: 15px;\
            }\
                .sidenav a {\
                font-size: 18px;\
            }\
        }\
    </style>";
        mainHtml = "<div class='sidenav'>\
            <a href = '#about' > About</a >\
                <a href='#services'>Services</a>\
                <a href='#clients'>Clients</a>\
                <a href='#contact'>Contact</a>\
                <button class='dropdown-btn'>\
                    Dropdown\
            <i class='fa fa-caret-down'></i>\
                </button>\
                <div class='dropdown-container'>\
                    <a href='#'>Link 1</a>\
                    <a href='#'>Link 2</a>\
                    <a href='#'>Link 3</a>\
                </div>\
                <button class='dropdown-btn'>\
                    Dropdown\
            <i class='fa fa-caret-down'></i>\
                </button>\
                <div class='dropdown-container'>\
                    <a href='#'>Link 1</a>\
                    <a href='#'>Link 2</a>\
                    <a href='#'>Link 3</a>\
                </div>\
                <a href='#contact'>Search</a>\
    </div >";

        Script = " <script>\
        var dropdown = document.getElementsByClassName(\"dropdown-btn\");\
        var i;\
        for (i = 0; i < dropdown.length; i++) {\
            dropdown[i].addEventListener(\"click\", function () {\
                this.classList.toggle(\"active\");\
                var dropdownContent = this.nextElementSibling;\
                if (dropdownContent.style.display === \"block\") {\
                    dropdownContent.style.display = \"none\";\
                } else {\
                    dropdownContent.style.display = \"block\";\
                }\
            });\
        }\
    </script >";

        var txtMainControl = document.getElementById('txtMainControl');
        var txtBarSection1 = document.getElementById('txtBarSection1');
        var txtBarSection2 = document.getElementById('txtBarSection2');
        var txtFooter = document.getElementById('txtFooter');

        txtMainControl.value = M_header + "{0}" +mainCss + "<div class='sidenav'>{1}</div>{2}{3}</div>" + Script;
        txtBarSection1.value = " <button onclick='{0}' class='dropdown-btn'>\
                    {1}\
            <i class='fa fa-caret-down'></i>\
                </button>\
                <div class='dropdown-container'>\
                   {2}\
                </div>";
        txtBarSection2.value = "<a href='{0}'> {1}</a>";
        txtFooter.value = Footer;
    }
   

    //document.getElementById('NavFrame').contentWindow.document.head.innerHTML 
    var head = mainCss + "<link href='../../assets/vendors/font-awesome/css/font-awesome.min.css' rel='stylesheet' />";
    document.getElementById('NavFrame').contentWindow.document.body.innerHTML = head+ mainCss + "\n"+ mainHtml + mainBody + Footer +"\n" +Script;
    //document.getElementById('NavFrame').srcdoc = mainCss+ mainHtml + mainBody + Footer + Script;
}
function VarticalNavBar() {
    clearBox();
    Height.value = VarticalNav_Height;
    Width.value = VarticalNav_Width;
    BackgroundColor.value = VarticalNav_BackgroundColor;
    Padding.value = VarticalNav_Padding;
    FontSize.value = VarticalNav_FontSize;
    Color.value = VarticalNav_Color;
    HoverColor.value = VarticalNav_Hover_Color;
    HoverbgColor.value = VarticalNav_Hover_BackgroundColor;
    Float.value = VarticalNav_Float;
    from.value = "vartical";
}
function HorizontalNavBar() {
    clearBox();
    BackgroundColor.value = HorizontalNav_BackgroundColor;
    Float.value = HorizontalNav_float;
    FontSize.value = HorizontalNav_fontsize;
    Color.value = HorizontalNav_color;
    Padding.value = HorizontalNav_padding;
    HoverbgColor.value = HorizontalNav_hover_up_BackgroundColor;
    HoverColor.value = HorizontalNav_hover_down_BackgroundColor;
    Height.value = HorizontalNav_Height;
    Width.value = HorizontalNav_Width;
    from.value = "horizontal";
}
function ShowNavFooter() {
    Float.value = Footer_CSS_Float;
    Width.value = Footer_CSS_Width;
    BackgroundColor.value = Footer_CSS_BackgroundColor;
    Color.value = Footer_CSS_Color;
    from.value = "footer";
}
function showHeaderLogo() {
    clearBox();
    Float.value = HeaderBar_Logo_Css_Float;
    Width.value = HeaderBar_Logo_Css_Width;
    Height.value = HeaderBar_Logo_Css_Heigh;
    Margin.value = HeaderBar_Logo_Css_Margin;
    BackgroundColor.value = HeaderBar_Logo_Css_backgroundColor;
    src.value = HeaderBar_Logo_Css_Src;
    BorderRadius.value = HeaderBar_Logo_Css_BorderRadius;
    href.value = HeaderBar_Logo_Css_href;
    from.value = "logo";
}
function showHeaderMain() {
    clearBox();
    BackgroundColor.value = HeaderBar_Main_Css_backgroundColor;
    Width.value = HeaderBar_Main_Css_Width;
    Height.value = HeaderBar_Main_Css_Height;
    from.value = "main";
}
function showHeaderNotification() {
    clearBox();
    Float.value = HeaderBar_Notification_Css_Float;
    Color.value = HeaderBar_Notification_Css_Color;
    FontSize.value = HeaderBar_Notification_Css_FontSize;
    Margin.value = HeaderBar_Notification_Css_Margin;
    href.value = HeaderBar_Notification_Css_href;
    BackgroundColor.value = HeaderBar_Notification_Css_backgroundcolor;
    Padding.value = HeaderBar_Notification_Css_padding;
    BorderRadius.value = HeaderBar_Notification_Css_BorderRadius;
    from.value = "notification";
}
function showHeaderMessage() {
    Float.value = HeaderBar_Message_Css_Float;
    Color.value =  HeaderBar_Message_Css_Color;
    FontSize.value = HeaderBar_Message_Css_FontSize;
    Margin.value = HeaderBar_Message_Css_Margin;
    href.value = HeaderBar_Message_Css_href;
    BackgroundColor.value = HeaderBar_Message_Css_backgroundcolor;
    Padding.value = HeaderBar_Message_Css_padding;
    BorderRadius.value = HeaderBar_Message_Css_BorderRadius;
    from.value = "message";
}
function showHeaderScarch() {
    clearBox();
    Float.value = HeaderBar_ScarchIteam_CSS_Float;
    Color.value = HeaderBar_ScarchIteam_CSS_Color;
    FontSize.value = HeaderBar_ScarchIteam_CSS_FontSize;
    Margin.value = HeaderBar_ScarchIteam_CSS_Margin;
    Width.value = HeaderBar_ScarchIteam_CSS_Width;
    Height.value= HeaderBar_ScarchIteam_CSS_Height;
    from.value = "scarch";
}
function showHeaderProfile() {
    clearBox();
    Float.value = HeaderBar_Profile_Css_Float;
    Width.value = HeaderBar_Profile_Css_Width;
    Height.value = HeaderBar_Profile_Css_Heigh;
    Margin.value = HeaderBar_Profile_Css_Margin;
    BackgroundColor.value = HeaderBar_Profile_Css_backgroundColor;
    src.value = HeaderBar_Profile_Css_Src;
    BorderRadius.value = HeaderBar_Profile_Css_BorderRadius;
    href.value = HeaderBar_Profile_Css_href;
    from.value = "profile";
}

function clearBox() {
    Float.value = "";
    FontSize.value = "";
    Width.value = "";
    Height.value = "";
    Margin.value = "";
    Padding.value = "";
    BackgroundColor.value = "";
    Color.value = "";
    src.value = "";
    BorderRadius.value = "";
    href.value = "";
    from.value = "";
    HoverColor.value = "";
    HoverbgColor.value = "";
}
function saveHtml() {  
    if (from.value == "logo") {
        HeaderBar_Logo_Css_Float = Float.value;
        HeaderBar_Logo_Css_Width = Width.value;
        HeaderBar_Logo_Css_Heigh = Height.value;
        HeaderBar_Logo_Css_Margin = Margin.value;
        HeaderBar_Logo_Css_backgroundColor = BackgroundColor.value;
        HeaderBar_Logo_Css_Src = src.value;
        HeaderBar_Logo_Css_BorderRadius = BorderRadius.value;
        HeaderBar_Logo_Css_href = href.value;
        var txtSrcLogo = document.getElementById('txtSrcProfileImage');
        txtSrcLogo.value = src.value;
    }
    else if (from.value == "main") {
        HeaderBar_Main_Css_backgroundColor = BackgroundColor.value;
        HeaderBar_Main_Css_Width = Width.value;
        HeaderBar_Main_Css_Height = Height.value;
    }
    else if (from.value == "notification") {
        HeaderBar_Notification_Css_Float = Float.value;
        HeaderBar_Notification_Css_Color = Color.value;
        HeaderBar_Notification_Css_FontSize = FontSize.value;
        HeaderBar_Notification_Css_Margin = Margin.value;
        HeaderBar_Notification_Css_href = href.value;
        HeaderBar_Notification_Css_backgroundcolor = BackgroundColor.value;
        HeaderBar_Notification_Css_padding = Padding.value;
        HeaderBar_Notification_Css_BorderRadius = BorderRadius.value;
    }
    else if (from.value == "message") {
        HeaderBar_Message_Css_Float = Float.value;
        HeaderBar_Message_Css_Color = Color.value;
        HeaderBar_Message_Css_FontSize = FontSize.value;
        HeaderBar_Message_Css_Margin = Margin.value;
        HeaderBar_Message_Css_href = href.value;
        HeaderBar_Message_Css_backgroundcolor = BackgroundColor.value;
        HeaderBar_Message_Css_padding = Padding.value;
        HeaderBar_Message_Css_BorderRadius = BorderRadius.value;
    }
    else if (from.value == "scarch") {
        HeaderBar_ScarchIteam_CSS_Float = Float.value;
        HeaderBar_ScarchIteam_CSS_Color = Color.value;
        HeaderBar_ScarchIteam_CSS_FontSize = FontSize.value;
        HeaderBar_ScarchIteam_CSS_Margin = Margin.value;
        HeaderBar_ScarchIteam_CSS_Width = Width.value;
        HeaderBar_ScarchIteam_CSS_Height = Height.value;
    }
    else if (from.value == "profile") {
        HeaderBar_Profile_Css_Float = Float.value;
        HeaderBar_Profile_Css_Width = Width.value;
        HeaderBar_Profile_Css_Heigh = Height.value;
        HeaderBar_Profile_Css_Margin = Margin.value;
        HeaderBar_Profile_Css_backgroundColor = BackgroundColor.value;
        HeaderBar_Profile_Css_Src = src.value;
        HeaderBar_Profile_Css_BorderRadius = BorderRadius.value;
        HeaderBar_Profile_Css_href = href.value;
        var txtSrcProfileImage = document.getElementById('txtSrcProfileImage');
        txtSrcProfileImage.value = src.value;
    }
    else if (from.value == "horizontal") {
        HorizontalNav_BackgroundColor = BackgroundColor.value;
        HorizontalNav_float = Float.value;
        HorizontalNav_fontsize = FontSize.value;
        HorizontalNav_color = Color.value;
        HorizontalNav_padding = Padding.value;
        HorizontalNav_hover_up_BackgroundColor = HoverbgColor.value;
        HorizontalNav_hover_down_BackgroundColor = HoverColor.value;
        HorizontalNav_Width = Width.value;
        HorizontalNav_Height = Height.value;
        ShowVarticalHtml(false);
    }
    else if (from.value == "vartical") {
        VarticalNav_Height = Height.value;
        VarticalNav_Width = Width.value;
        VarticalNav_BackgroundColor = BackgroundColor.value;
        VarticalNav_Padding = Padding.value;
        VarticalNav_FontSize = FontSize.value;
        VarticalNav_Color = Color.value;
        VarticalNav_Hover_Color = HoverColor.value;
        VarticalNav_Hover_BackgroundColor = HoverbgColor.value;
        VarticalNav_Float = Float.value;
        ShowVarticalHtml(true);
    }
    else if (from.value == "footer") {
        Footer_CSS_Float = Float.value;
        Footer_CSS_Width = Width.value;
        Footer_CSS_BackgroundColor = BackgroundColor.value;
        Footer_CSS_Color = Color.value;
        var Icon = this.document.getElementById('Icon');
        if (Icon.className == "fa fa-toggle-off") {
            ShowVarticalHtml(false);
        }
        else {
            ShowVarticalHtml(true);
        }
        
    }
    clearBox();
    showHeaderHtml();
}

/*Header Bar*/{
    var HeaderBar_Main_Css_backgroundColor = "#0094ff";
    var HeaderBar_Main_Css_Width = "100%";
    var HeaderBar_Main_Css_Height = "100px";

    var HeaderBar_Logo_Css_Float = "left";
    var HeaderBar_Logo_Css_Width = "60px";
    var HeaderBar_Logo_Css_Heigh = "60px";
    var HeaderBar_Logo_Css_Margin = "20px";
    var HeaderBar_Logo_Css_backgroundColor = "#b6ff00";
    var HeaderBar_Logo_Css_Src = "../../image/mysql.png";
    var HeaderBar_Logo_Css_BorderRadius = "50%";
    var HeaderBar_Logo_Css_href = "#";

    var HeaderBar_Profile_Css_Float = "right";
    var HeaderBar_Profile_Css_Width = "50px";
    var HeaderBar_Profile_Css_Heigh = "50px";
    var HeaderBar_Profile_Css_Margin = "20px";
    var HeaderBar_Profile_Css_backgroundColor = "#ffffff";
    var HeaderBar_Profile_Css_Src = "../../image/No-image-available.png";
    var HeaderBar_Profile_Css_BorderRadius = "50%";
    var HeaderBar_Profile_Css_href = "#";

    var HeaderBar_Notification_Css_Float = "left";
    var HeaderBar_Notification_Css_Color = "#ffffff";
    var HeaderBar_Notification_Css_FontSize = "20px";
    var HeaderBar_Notification_Css_Margin = "20px";
    var HeaderBar_Notification_Css_href = "#";
    var HeaderBar_Notification_Css_backgroundcolor = "#57585a";
    var HeaderBar_Notification_Css_padding = "15px 26px";
    var HeaderBar_Notification_Css_BorderRadius = "2px";

    var HeaderBar_Message_Css_Float = "left";
    var HeaderBar_Message_Css_Color = "#ffffff";
    var HeaderBar_Message_Css_FontSize = "20px";
    var HeaderBar_Message_Css_Margin = "20px";
    var HeaderBar_Message_Css_href = "#";
    var HeaderBar_Message_Css_backgroundcolor = "#57585a";
    var HeaderBar_Message_Css_padding = "15px 26px";
    var HeaderBar_Message_Css_BorderRadius = "2px";

    var HeaderBar_ScarchIteam_CSS_Float = "left";
    var HeaderBar_ScarchIteam_CSS_Color = "#ff0000";
    var HeaderBar_ScarchIteam_CSS_FontSize = "20px";
    var HeaderBar_ScarchIteam_CSS_Margin = "25px 20px 20px 500px";
    var HeaderBar_ScarchIteam_CSS_Width = "200px";
    var HeaderBar_ScarchIteam_CSS_Height = "30px";
}
/*Horizontal Nav*/{
    var HorizontalNav_BackgroundColor = "#4f4f4f";
    var HorizontalNav_float = "left";
    var HorizontalNav_fontsize = "16px";
    var HorizontalNav_color = "#ffffff";
    var HorizontalNav_padding = "14px 16px";
    var HorizontalNav_hover_up_BackgroundColor = "#b41e1e";
    var HorizontalNav_hover_down_BackgroundColor = "#e5e5e5";
    var HorizontalNav_Width = "100%";
    var HorizontalNav_Height = "40px;";
}
/*Vartical Nav*/{
    var VarticalNav_Height = "100%";
    var VarticalNav_Width = "200px";
    var VarticalNav_BackgroundColor = "1d1d1d";
    var VarticalNav_Padding = "6px 8px 6px 16px";
    var VarticalNav_FontSize = "20px";
    var VarticalNav_Color = "#818181";
    var VarticalNav_Hover_Color = "#f1f1f1";
    var VarticalNav_Hover_BackgroundColor = "#038203";
    var VarticalNav_Float = "right";
}
/*Footer*/{
    var Footer_CSS_Width = "100%";
    var Footer_CSS_Float = "center";
    var Footer_CSS_BackgroundColor = "#dc3545";
    var Footer_CSS_Color = "#ffffff";
}
