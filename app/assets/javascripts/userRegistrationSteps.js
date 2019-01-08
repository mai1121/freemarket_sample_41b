/*
 Form To Wizard https://github.com/artoodetoo/formToWizard
 Free to use under MIT license.

 Originally created by Janko.
 Featured by iFadey.
 Polishing by artoodetoo.

 */

(function($) {
    $.fn.formToWizard = function( options, cmdParam1 ) {
        // Stop when selector found nothing!
        if (this.length == 0) return this;

        if( typeof options !== 'string' ) {
            options = $.extend({
                submitButton:       '',
                showStepNo:         true,
                validateBeforeNext: null,
                select:             null,
                progress:           null,
                nextBtnName:        'Next &gt;',
                buttonTag:          'a',
                nextBtnClass:       'btn-default btn-red',
                prevBtnClass:       'btn prev'
            }, options);
        }

        var element = this
            , steps = $( element ).find( "fieldset" )
            , count = steps.length
            , submmitButtonName = "#" + options.submitButton
            , commands = null;


        if( typeof options !== 'string' ) {
            //assign options to current/selected form (element)
            $( element ).data( 'options', options );

            /**************** Validate Options ********************/
            if( typeof( options.validateBeforeNext ) !== "function" )
                options.validateBeforeNext = function() { return true; };

            if( options.showProgress) {
                var progressBar = [
                  "会員情報 <div class='progress-status'></div>",
                  "電話番号認証 <div class='progress-status'></div>",
                  "住所入力 <div class='progress-status'></div>",
                  "支払い方法 <div class='progress-status'></div>",
                  "完了 <div class='progress-status'></div>"
                ]
                var bar = $('.signup-bar').append("<ol class='clearfix'></ol>")
                progressBar.forEach(function(ele, i){
                    bar.append(`<li id=${ "progress" + i } class="progress">${ele}</li>`)
                });
            }
            /************** End Validate Options ******************/


            steps.each(function(i) {
                $(this).wrap('<div id="step' + i + '" class="stepDetails"></div>');
                $(this).find('.l-signup-content').append('<p id="step' + i + 'commands" class="commands"></p>');

                if (i == 0) {
                    createNextButton(i);
                    selectStep(i);
                }
                else if (i == count - 1) {
                    $("#step" + i).hide();
                    // move submit button to the last step
                    $(submmitButtonName).addClass('next').detach().appendTo("#step" + i + "commands");
                }
                else {
                    $("#step" + i).hide();
                    createNextButton(i);
                }
            });

        } else if( typeof options === 'string' ) {
            var cmd = options;

            initCommands();

            if( typeof commands[ cmd ] === 'function' ) {
                commands[ cmd ]( cmdParam1 );
            } else {
                throw cmd + ' is invalid command!';
            }
        }


        /******************** Command Methods ********************/
        function initCommands() {
            //restore options object from form element
            options = $( element ).data( 'options' );

            commands = {
                GotoStep: function( stepNo ) {
                    var stepName = "step" + (--stepNo);

                    if( $( '#' + stepName )[ 0 ] === undefined ) {
                        throw 'Step No ' + stepNo + ' not found!';
                    }

                    if( $( '#' + stepName ).css( 'display' ) === 'none' ) {
                        $( element ).find( '.stepDetails' ).hide();
                        $( '#' + stepName ).show();
                        selectStep( stepNo );
                    }
                },
                NextStep: function() {
                    $( '.stepDetails:visible' ).find( 'a.next' ).click();
                },
                PreviousStep: function() {
                    $( '.stepDetails:visible' ).find( 'a.prev' ).click();
                }
            };
        }
        /******************** End Command Methods ********************/


        /******************** Private Methods ********************/

        function createNextButton(i) {
            var stepName = 'step' + i;
            $('#' + stepName + 'commands').append(
                '<' + options.buttonTag + ' href="#" id="' + stepName + 'Next" class="' + options.nextBtnClass + '">' +
                options.nextBtnName +
                '</' + options.buttonTag + '>');

            $("#" + stepName + "Next").bind( "click", function(e) {
                if( options.validateBeforeNext(element, $("#" + stepName)) === true ) {
                    $("#" + stepName).hide();
                    $("#step" + (i + 1)).show();
                    //if (i + 2 == count)
                    selectStep(i + 1);
                }

                return false;
            });
        }

        function selectStep(i) {
            if( options.showProgress ) {
                $(".progress").removeClass("active");
                [...Array(i).keys()].forEach( function(index) {
                    $("#progress" + index).addClass("through");
                });
                $("#progress" + i).addClass("active");
            }

            if( options.select ) {
                options.select(element, $('#step'+i));
            }
            $('html,body').animate({scrollTop: 0}, 10, 'swing')
        }
        /******************** End Private Methods ********************/

        return this;

    }
})(jQuery);


$(document).on('turbolinks:load', function() {
    var $signupForm = $( '#new_user' );

    // $signupForm.validationEngine();

    $signupForm.formToWizard({
        submitButton: 'SaveAccount',
        showStepNo: false,
        nextBtnName: '次へ進む',
        showStepNo: false,
        showProgress: true
    });


    $( '#txt_stepNo' ).change( function() {
        $signupForm.formToWizard( 'GotoStep', $( this ).val() );
    });

    $( '#btn_next' ).click( function() {
        $signupForm.formToWizard( 'NextStep' );
    });
});
