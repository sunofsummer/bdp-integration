$(document).ready(function () {
    /**
     * ===================================================================
     *                          cookies start
     * ===================================================================
     */
    if ($.cookies.test()) {

        // ADMIN BLOCK
        var bAdmin_v = $.cookies.get('b_Admin_visibility');

        if (null == bAdmin_v) {

            if ($('.adminControl').hasClass('active'))
                $.cookies.set('b_Admin_visibility', 'visible');
            else
                $.cookies.set('b_Admin_visibility', 'hidden');

        } else {

            if (bAdmin_v == 'visible')
                $('.adminControl').addClass('active');
            else
                $('.adminControl').removeClass('active');

        }

        // EOF ADMIN BLOCK

        // Collapsible widgets
        $("div[class^=block]").each(function () {

            if ($(this).attr('data-cookie')) {

                var c_val = $.cookies.get($(this).attr('data-cookie'));

                if (null != c_val) {

                    if (c_val == 'visible') {
                        $(this).parent('div[class^=span]').find('.head > .buttons li.toogle').removeClass('active');
                        $(this).show();
                    } else {
                        $(this).parent('div[class^=span]').find('.head > .buttons li.toogle').addClass('active');
                        $(this).hide();
                    }

                }
            }

        });
        // eof Collapsible widgets
    }
    /**
     * ===================================================================
     *                          plugins start
     * ===================================================================
     */
    /* LEFT SIDE DATEPICKER */
    $("#menuDatepicker").datepicker();
    /* UI elements datepicker */
    $("#Datepicker").datepicker();

    /* CALENDAR */
    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    var calendar = $('#calendar').fullCalendar({
        header: {
            left: 'prev,next',
            center: 'title',
            right: ''
            //right: 'month,agendaWeek,agendaDay'
        },
        selectable: true,
        selectHelper: true,
        select: function (start, end, allDay) {
            var title = prompt('Event Title:');
            if (title) {
                calendar.fullCalendar('renderEvent',
                    {
                        title: title,
                        start: start,
                        end: end,
                        allDay: allDay
                    },
                    true // make the event "stick"
                );
            }
            calendar.fullCalendar('unselect');
        },
        editable: true,
        events: [
            {
                title: 'All Day Event',
                start: new Date(y, m, 20),
                end: new Date(y, m, 21)
            },
            {
                title: 'Long Event',
                start: new Date(y, m, 1),
                end: new Date(y, m, 10)
            }
        ]
    });

    // SELECT2
    $("#s2_1").select2();
    $("#s2_2").select2();

    // CHECKBOXES AND RADIO
    $(".row-form,.row-fluid,.dialog,.loginBox,.block,.block-fluid").find("input:checkbox, input:radio, input:file").not(".skip").uniform();


    // MASKED INPUTS

    $("#mask_phone").mask('99 (999) 999-99-99');
    $("#mask_credit").mask('9999-9999-9999-9999');
    $("#mask_date").mask('99/99/9999');
    $("#mask_tin").mask('99-9999999');
    $("#mask_ssn").mask('999-99-9999');

    //FORM VALIDATION

    $("#validation").validationEngine({promptPosition: "topLeft", scroll: true});

    // CUSTOM SCROLLING

    $(".scroll").mCustomScrollbar();

    // ACCORDION

    $(".accordion").accordion();

    // PROGRESSBAR

    if ($("#progressbar-1").length > 0)
        $("#progressbar-1").anim_progressbar();

    if ($("#progressbar-2").length > 0) {
        var iNow = new Date().setTime(new Date().getTime() + 3 * 1000);
        var iEnd = new Date().setTime(new Date().getTime() + 20 * 1000);
        $('#progressbar-2').anim_progressbar({start: iNow, finish: iEnd, interval: 1});
    }
    if ($("#progressbar-3").length > 0)
        $('#progressbar-3').progressbar({value: 65});

    if ($("#progressbar-4").length > 0)
        $('#progressbar-4').progressbar({value: 35});

    // DIALOG

    $("#b_popup_1").dialog({autoOpen: false});

    $("#popup_1").click(function () {
        $("#b_popup_1").dialog('open')
    });

    $("#b_popup_2").dialog({autoOpen: false, show: "blind", hide: "explode"});

    $("#popup_2").click(function () {
        $("#b_popup_2").dialog('open')
    });

    $("#b_popup_3").dialog({autoOpen: false, modal: true});

    $("#popup_3").click(function () {
        $("#b_popup_3").dialog('open')
    });

    $("#b_popup_4").dialog({autoOpen: false,
        modal: true,
        width: 400,
        buttons: {
            "Ok": function () {
                $(this).dialog("close");
            },
            Cancel: function () {
                $(this).dialog("close");
            }
        }});

    $("#popup_4").click(function () {
        $("#b_popup_4").dialog('open')
    });

    // SLIDER

    $("#slider_1").slider({
        value: 60,
        orientation: "horizontal",
        range: "min",
        animate: true,
        slide: function (event, ui) {
            $("#slider_1_amount").html("$" + ui.value);
        }
    });

    $("#slider_2").slider({
        values: [ 17, 67 ],
        orientation: "horizontal",
        range: true,
        animate: true,
        slide: function (event, ui) {
            $("#slider_2_amount").html("$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ]);
        }
    });

    $("#slider_3").slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 100,
        value: 10,
        slide: function (event, ui) {
            $("#slider_3_amount").html('$' + ui.value);
        }
    });

    $("#slider_4").slider({
        orientation: "vertical",
        range: true,
        values: [ 17, 67 ]
    });

    $("#slider_5").slider({
        orientation: "vertical",
        range: "max",
        min: 1,
        max: 10,
        value: 2
    });


    // TABS

    $(".tabs").tabs();

    // TOOLTIPS

    $('.tt').qtip({ style: {name: 'aquarius' },
        position: {
            corner: {
                target: 'topRight',
                tooltip: 'bottomLeft'
            }
        }
    });

    $('.ttRC').qtip({ style: { name: 'aquarius' },
        position: {
            corner: {
                target: 'rightMiddle',
                tooltip: 'leftMiddle'
            }
        }
    });

    $('.ttRB').qtip({ style: { name: 'aquarius' },
        position: {
            corner: {
                target: 'bottomRight',
                tooltip: 'topLeft'
            }
        }
    });

    $('.ttLT').qtip({ style: { name: 'aquarius' },
        position: {
            corner: {
                target: 'topLeft',
                tooltip: 'bottomRight'
            }
        }
    });

    $('.ttLC').qtip({ style: { name: 'aquarius' },
        position: {
            corner: {
                target: 'leftMiddle',
                tooltip: 'rightMiddle'
            }
        }
    });

    $('.ttLB').qtip({ style: { name: 'aquarius' },
        position: {
            corner: {
                target: 'bottomLeft',
                tooltip: 'topRight'
            }
        }
    });

    // Bootstrap tooltip
    $(".tip").tooltip({placement: 'top', trigger: 'hover'});
    $(".tipb").tooltip({placement: 'bottom', trigger: 'hover'});
    $(".tipl").tooltip({placement: 'left', trigger: 'hover'});
    $(".tipr").tooltip({placement: 'right', trigger: 'hover'});


    // SORTABLE
    $("#sort_1").sortable({placeholder: "placeholder"});
    $("#sort_1").disableSelection();

    // SELECTABLE
    $("#selectable_1").selectable();


    // WYSIWIG HTML EDITOR
    if ($("#wysiwyg").length > 0) {
        editor = $("#wysiwyg").cleditor({width: "100%", height: "100%"})[0].focus();
    }
    if ($("#mail_wysiwyg").length > 0)
        m_editor = $("#mail_wysiwyg").cleditor({width: "100%", height: "100%", controls: "bold italic underline strikethrough | font size style | color highlight removeformat | bullets numbering | outdent alignleft center alignright justify"})[0].focus();

    $('#sendmail').on('shown', function () {
        m_editor.refresh();
        $(this).find('.uploader').show();
    });

    // WYSIWIG HTML EDITOR

    // Sortable table
    if ($("#tSortable").length > 0) {
        $("#tSortable").dataTable({"iDisplayLength": 5, "aLengthMenu": [5, 10, 25, 50, 100], "sPaginationType": "full_numbers", "aoColumns": [
            { "bSortable": false },
            null,
            null,
            null,
            null
        ]});
        $("#tSortable_2").dataTable({"iDisplayLength": 5, "sPaginationType": "full_numbers", "bLengthChange": false, "bFilter": false, "bInfo": false, "bPaginate": true, "aoColumns": [
            { "bSortable": false },
            null,
            null,
            null,
            null
        ]});
    }


    //File manager

    if ($("#filemanager").length > 0) {
        $("#filemanager").elfinder({url: 'php/elfinder/connector.php'}).elfinder('instance');
    }

    // File uploader
    if ($("#uploader_v5").length > 0) {
        $("#uploader_v5").pluploadQueue({
            runtimes: 'html5',
            url: 'php/pluploader/upload.php',
            max_file_size: '1mb',
            chunk_size: '1mb',
            unique_names: true,
            dragdrop: true,

            resize: {width: 320, height: 240, quality: 100},

            filters: [
                {title: "Image files", extensions: "jpg,gif,png"},
                {title: "Zip files", extensions: "zip"}
            ]
        });
    }
    if ($("#uploader_v4").length > 0) {
        $("#uploader_v4").pluploadQueue({
            runtimes: 'html4',
            url: 'php/pluploader/upload.php',
            unique_names: true,
            filters: [
                {title: "Image files", extensions: "jpg,gif,png"},
                {title: "Zip files", extensions: "zip"}
            ]
        });
    }

    /* Multiselect */
    if ($("#multiselect").length > 0) {
        $("#multiselect").multiSelect();
    }
    if ($("#fmultiselect").length > 0) {
        $("#fmultiselect").multiSelect({
            selectableHeader: "<div class='multipleselect-header'>Selectable item</div>",
            selectedHeader: "<div class='multipleselect-header'>Selected items</div>"
        });
        $('#multiselect-selectAll').click(function () {
            $('#fmultiselect').multiSelect('select_all');
            return false;
        });
        $('#multiselect-deselectAll').click(function () {
            $('#fmultiselect').multiSelect('deselect_all');
            return false;
        });
        $('#multiselect-selectIndia').click(function () {
            $('#fmultiselect').multiSelect('select', 'in');
            return false;
        });
    }
    if ($(".tags").length > 0)
        $(".tags").tagsInput({'width': '100%',
            'height': 'auto'});

    // Wizard
    if ($("#wizard").length > 0) $('#wizard').stepy();

    if ($("#wizard_validate").length > 0) {

        $("#wizard_validate").validationEngine('attach', {promptPosition: "topLeft"});

        $('#wizard_validate').stepy({
            back: function (index) {
                //if(!$("#wizard_validate").validationEngine('validate')) return false; //uncomment if u need to validate on back click
            },
            next: function (index) {
                if (!$("#wizard_validate").validationEngine('validate')) return false;
            },
            finish: function (index) {
                if (!$("#wizard_validate").validationEngine('validate')) return false;
            }
        });
    }
    // eof wizard
    /**
     * ===================================================================
     *                          setting start
     * ===================================================================
     */
    /* Check cookies */
    /*fixed*/
    var tFixed = $.cookies.get('themeSettings_fixed');
    if (null != tFixed) {
        $(".wrapper").addClass('fixed');
        $(".settings input[name=settings_fixed]").attr('checked', true).parent('span').addClass('checked');
    }

    /*menu*/
    var tMenu = $.cookies.get('themeSettings_menu');
    if (null != tMenu) {
        if (null != tMenu) {
            $(".menu").addClass('hidden').hide();
            $(".header_menu li.list_icon").show();
            $(".content").addClass('wide');
            $(".settings input[name=settings_menu]").attr('checked', true).parent('span').addClass('checked');
        }
    }
    /*bg*/
    var tBg = $.cookies.get('themeSettings_bg');
    if (null != tBg) {
        $('body').removeAttr('class').addClass(tBg);
        $('.settings .bgExample').removeClass('active');
        $('.settings .bgExample[data-style="' + tBg + '"]').addClass('active');
    }
    /*theme style*/
    var tStyle = $.cookies.get('themeSettings_style');
    if (null != tStyle) {
        if ($('.wrapper').hasClass('fixed'))
            $(".wrapper").attr('class', '').addClass('wrapper fixed');
        else
            $(".wrapper").attr('class', '').addClass('wrapper');

        $('.settings .styleExample').removeClass('active');
        $(".wrapper").addClass(tStyle);
        $('.settings .styleExample[data-style="' + tStyle + '"]').addClass('active');
    }


    /**
     * ===================================================================
     *                          actions start
     * ===================================================================
     */

    $("div[class^='span']").find(".row-form:first").css('border-top', '0px');
    $("div[class^='span']").find(".row-form:last").css('border-bottom', '0px');

    // collapsing widgets
    $(".toggle a").click(function () {

        var box = $(this).parents('[class^=head]').parent('div[class^=span]').find('div[class^=block]');

        if (box.length == 1) {

            if (box.is(':visible')) {

                if (box.attr('data-cookie'))
                    $.cookies.set(box.attr('data-cookie'), 'hidden');

                $(this).parent('li').addClass('active');
                box.slideUp(100);

            } else {

                if (box.attr('data-cookie'))
                    $.cookies.set(box.attr('data-cookie'), 'visible');

                $(this).parent('li').removeClass('active');
                box.slideDown(200);

            }
        }

        return false;
    });

    // collapsing widgets

    // setting for list with button <<more>>

    var cList = 5; // count list items


    $(".withList").each(function () {

        if ($(this).find('.list li').length > cList) {

            $(this).find('.list li').hide().filter(':lt(' + cList + ')').show();

            $(this).append('<div class="footer"><button type="button" class="btn btn-small more">show more...</button></div>');

        }

        if ($(this).hasClass('scrollBox'))
            $(this).find('.scroll').mCustomScrollbar("update");
    });


    $(".more").live('click', function () {

        if (!$(this).hasClass('disabled')) {

            cList = cList + 5;

            var wl = $(this).parents('.withList');
            var list = wl.find('.list li');

            list.filter(':lt(' + cList + ')').show();

            if (list.length < cList) $(this).addClass('disabled');


            if ($(wl).hasClass('scrollBox'))
                $(wl).find('.scroll').mCustomScrollbar("update");

        }
    });
    // eof setting for list with button <<more>>


    $(".header_menu .list_icon").click(function () {

        var menu = $("body .wrapper .menu");

        if (menu.is(":visible")) {
            menu.fadeOut(200);
            $("body > .modal-backdrop").remove();
        } else {
            menu.fadeIn(300);
            $("body").append("<div class='modal-backdrop fade in'></div>");
        }

        return false;
    });

    if ($(".adminControl").hasClass('active')) {
        $('.admin').fadeIn(300);
    }


    $(".adminControl").click(function () {

        if ($(this).hasClass('active')) {

            $.cookies.set('b_Admin_visibility', 'hidden');

            $('.admin').fadeOut(200);

            $(this).removeClass('active');

        } else {

            $.cookies.set('b_Admin_visibility', 'visible');

            $('.admin').fadeIn(300);

            $(this).addClass('active');
        }

    });

    $(".jbtn").button();

    $(".alert").click(function () {
        $(this).fadeOut(300, function () {
            $(this).remove();
        });
    });

    $(".buttons li > a").click(function () {

        var parent = $(this).parent();

        if (parent.find(".dd-list").length > 0) {

            var dropdown = parent.find(".dd-list");

            if (dropdown.is(":visible")) {
                dropdown.hide();
                parent.removeClass('active');
            } else {
                dropdown.show();
                parent.addClass('active');
            }

            return false;

        }

    });


    $("#menuDatepicker").datepicker();


    $(".link_navPopMessages").click(function () {
        if ($("#navPopMessages").is(":visible")) {
            $("#navPopMessages").fadeOut(200);
        } else {
            $("#navPopMessages").fadeIn(300);
        }
        return false;
    });

    $(".link_bcPopupList").click(function () {
        if ($("#bcPopupList").is(":visible")) {
            $("#bcPopupList").fadeOut(200);
        } else {
            $("#bcPopupList").fadeIn(300);
        }
        return false;
    });

    $(".link_bcPopupSearch").click(function () {
        if ($("#bcPopupSearch").is(":visible")) {
            $("#bcPopupSearch").fadeOut(200);
        } else {
            $("#bcPopupSearch").fadeIn(300);
        }
        return false;
    });

    $("input[name=checkall]").click(function () {

        if (!$(this).is(':checked'))
            $(this).parents('table').find('.checker span').removeClass('checked').find('input[type=checkbox]').attr('checked', false);
        else
            $(this).parents('table').find('.checker span').addClass('checked').find('input[type=checkbox]').attr('checked', true);

    });

    /* Check cookies */

    $(".link_bcPopupSettings").click(function () {
        if ($("#bcPopupSettings").is(':visible')) {
            $("#bcPopupSettings").fadeOut(200);
            $("#bcPopupSettings").find(".checker").hide();
        } else {
            $("#bcPopupSettings").fadeIn(300);
            $("#bcPopupSettings").find(".checker").show();
        }

        return false;
    });

    $(".settings input[name=settings_fixed]").change(function () {
        if ($(this).is(':checked')) {
            $(".wrapper").addClass('fixed');
            $.cookies.set('themeSettings_fixed', '1');
        } else {
            $(".wrapper").removeClass('fixed');
            $.cookies.set('themeSettings_fixed', null);
        }
    });

    $(".settings input[name=settings_menu]").change(function () {

        if ($(this).is(':checked')) {
            $(".menu").addClass('hidden').hide();
            $(".header_menu li.list_icon").show();
            $(".content").addClass('wide');
            $.cookies.set('themeSettings_menu', '1');
        } else {
            $(".menu").removeClass('hidden').removeAttr('style');
            $(".header_menu li.list_icon").hide();
            $(".content").removeClass('wide');
            $("body > .modal-backdrop").remove();
            $.cookies.set('themeSettings_menu', null);
        }

    });

    $(".settings .bgExample").click(function () {
        var cls = $(this).attr('data-style');

        $('body').removeAttr('class');
        $('.settings .bgExample').removeClass('active');

        if (cls != '') {
            $('body').addClass(cls);
            $(this).addClass('active');
            $.cookies.set('themeSettings_bg', cls);
        } else {
            $(this).addClass('active');
            $.cookies.set('themeSettings_bg', null);
        }
        return false;
    });

    $(".settings .styleExample").click(function () {
        var cls = $(this).attr('data-style');

        if ($('.wrapper').hasClass('fixed'))
            $(".wrapper").attr('class', '').addClass('wrapper fixed');
        else
            $(".wrapper").attr('class', '').addClass('wrapper');


        $('.settings .styleExample').removeClass('active');

        if (cls != '') {
            $(".wrapper").addClass(cls);
            $(this).addClass('active');
            $.cookies.set('themeSettings_style', cls);
        } else
            $.cookies.set('themeSettings_style', null);

        return false;
    });


    $(".fancybox").fancybox();

    /**
     * ====================================================
     *                      一级导航样式切换.
     * ====================================================
     */
    $(".global-nav-master").click(function () {
        $(this).siblings(".global-nav-master").removeClass("global-nav-master-current"); //先移除同辈其他样式
        $(this).addClass("global-nav-master-current"); //添加背景样式

    });
});
$(window).load(function () {
    gallery();
    thumbs();
    headInfo();
});
$(window).resize(function () {
    headInfo();
});


$('.wrapper').resize(function () {

    if ($("body > .content").css('margin-left') == '220px') {
        if ($("body > .menu").is(':hidden'))
            $("body > .menu").show();
    }

    gallery();
    thumbs();
    headInfo();
});

function headInfo() {
    var block = $(".headInfo .input-append");
    var input = block.find("input[type=text]");
    var button = block.find("button");

    input.width(block.width() - button.width() - 44);

}

function thumbs() {

    $(".thumbs").each(function () {

        var maxImgHeight = 0;
        var maxTextHeight = 0;

        $(this).find(".thumbnail").each(function () {
            var imgHeight = $(this).find('a > img').height();
            var textHeight = $(this).find('.caption').height();

            maxImgHeight = maxImgHeight < imgHeight ? imgHeight : maxImgHeight;
            maxTextHeight = maxTextHeight < textHeight ? textHeight : maxTextHeight;
        });

        $(this).find('.thumbnail > a').height(maxImgHeight);
        $(this).find('.thumbnail .caption').height(maxTextHeight);
    });


    var w_block = $(".thumbs").width() - 20;
    var w_item = $(".thumbs .thumbnail").width() + 10;

    var c_items = Math.floor(w_block / w_item);

    var m_items = Math.floor((w_block - w_item * c_items) / (c_items * 2));

    $(".thumbs .thumbnail").css('margin', m_items);

}

function gallery() {

    var w_block = $(".gallery").width() - 20;
    var w_item = $(".gallery a").width();

    var c_items = Math.floor(w_block / w_item);

    var m_items = Math.round((w_block - w_item * c_items) / (c_items * 2));

    $(".gallery a").css('margin', m_items);
}