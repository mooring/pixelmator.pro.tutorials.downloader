(function( $ ){
  $(function(){
    let currentPageId = $('.guides').data('id');
    let $currentPageLink = $(`.guides-menu a[href*="${ currentPageId }"]`);
    const $currentApp = $('html').hasClass('pixelmator-pro') ? 'pixelmator-pro' : 'pixelmator-photo';
    $currentPageLink.addClass('active');
    $currentPageLink.parents('li').addClass('open');
    
    $('.guides-menu li > a').on('click', function(e) {
      let $this = $(this);

      if( $this.closest('li').hasClass('openable') ) {
        $this.closest('li').toggleClass('open');
  
        return false;
      } else {
        setTimeout(() => {
          closeContents();
        }, 50)
      }
    });

    function bindQuestions(){
      var questions = $(".guides-content .question");
      if(questions.length){
        questions.each(function(){
          var q = $(this);
          var t = q.find('.title');
          t.prepend($('<a class="show">Show</a><a class="hide">Hide</a>'));
          t.click(function(){
            q.toggleClass('open');
            setTimeout(function(){
              if($('html').hasClass('ipadInApp')){
                $('#content >:last-child').removeAttr('style');
                var height = $('#content').prop('scrollHeight');
                if(height <= 576){
                  var marginB = 556 - $('#content >:last-child').offset().top - $('#content >:last-child').prop('scrollHeight') + 1;
                  $('#content >:last-child').css('margin-bottom', marginB);
                }
              }
            }, 500);
          });
          if(questions.length === 1){
            t.click();
          }
        });
      }
    }

    bindQuestions();

    // Glossary
    $(document).on('click', '.glossary-link', function(e){
      $('html').addClass('no-scroll');
      e.preventDefault();
      var $word = $(this).text();
      var $explanation = $(this).attr('data-explanation');
      var $glossary;

      $glossary = $(
        '<aside class="glossary-overlay">' + 
          '<div class="glossary-modal">' + 
            '<div class="glossary-inner">' +
              '<h1 class="glossary-word">' + $word + '</h1>' +
              '<div class="glossary-explanation"><div class="glossary-wrapper">' + $explanation + '</div></div>' +
              '<div class="glossary-close">' +
                '<p>Close</p>' + 
              '</div>' + 
            '</div>' +
          '</div>' + 
        '</aside>'
      );

      $('body').append($glossary);

      $('.glossary-close').on('click', function(){
        $glossary.remove();
        $('html').removeClass('no-scroll');
      });
      $(document).on("keyup", function (e) {
        if (e.keyCode == 27) { // esc
          $('.glossary-close').triggerHandler('click');
        }	
      });
      $(document).on("mouseup", function (e){
        var container = $(".glossary-modal");
      
        if (!container.is(e.target) && container.has(e.target).length === 0){
          $('.glossary-close').triggerHandler('click');
        }
      }); 
    });

    $('.current-page__cta.is-contents .current-page__cta-btn:not(".is-search")').on('click', function() {
      if( !$('.guides-menu').hasClass('is-active') ) {
        openСontents();
      }
    });
    $('.guides__contents-btn-content').on('click', function() {
      if( !$('.guides-menu').hasClass('is-active') ) {
        openСontents();
      }
    });

    $(document).on("mouseup", function (e){
      var container = $(".guides-menu__wrapper");
    
      if (container.hasClass('is-visible') && !container.is(e.target) && container.has(e.target).length === 0){
        closeContents();
      }

      let searchResults = $('.search-results');
      let currentPage = $('.current-page');
      if (searchResults.hasClass('is-opened') && !searchResults.is(e.target) && !currentPage.is(e.target) && searchResults.has(e.target).length === 0 && currentPage.has(e.target).length === 0){
        searchInput.val('');
        setTimeout(function() {
          $('.search-results-bg').removeClass('is-active is-active--mobile');
          setTimeout(() => {
            $('html').removeClass('no-scroll');
            resultsBlock.removeClass('is-opened');
            
            setTimeout(function() {
              resultsTotal.text('');
              resultsInfo.html('');
              closeSearchField();
            }, 150);
          }, 130);
        }, 90);
      }
    }); 

    $('.guides-menu__close').on('click', function(){
      closeContents();
    })

    const openСontents = function() {
      $('html').addClass('no-scroll');
      $('.guides-menu').addClass('is-opened');
      $('.guides-menu__wrapper').addClass('is-visible');
      // setTimeout(function(){
      //   $('.guides-menu__wrapper').addClass('is-visible');
      // }, 100);
    }
    const closeContents = function() {
      $('html').removeClass('no-scroll');
      $('.guides-menu__wrapper').removeClass('is-visible');
      $('.guides-menu').removeClass('is-opened');
      // setTimeout(function(){
      //   $('.guides-menu').removeClass('is-opened');
      // }, 250)
    }

    $(document).on("keyup", function (e) {
      if (e.keyCode == 27 && $('.guides-menu').hasClass('is-opened')) { // esc
        $('html').removeClass('no-scroll');
        $('.guides-menu').removeClass('is-opened');
        $('.guides-menu__wrapper').removeClass('is-visible');
        $('.current-page__cta.is-contents .current-page__cta-btn').removeClass('is-opened');
      }	
    });

    // Search
    var searchFieldFlag = false;
    const openSearchField = function(){
      if( searchFieldFlag ) return false;

      $('.current-page').addClass('is-search');
      $('.guide-current-page__title').addClass('is-opened');
      setTimeout(function(){
        $('.guides__search-wrapper').addClass('is-active');
        $('.guides__search').addClass('is-active');
        setTimeout(function() {
          $('.search-results-bg').addClass('is-active');
        }, 60);
        resultsBlock.addClass('is-opened');
        setTimeout(function(){
          $('.guides__search-field').addClass('is-opened');
          $('.guides__search-input').focus();
        }, 150)
      }, 75)
    }
    const closeSearchField = function(){
      searchFieldFlag = true;
      $('.guides__search-wrapper').removeClass('is-active');
      $('.guide-current-page__title').removeClass('is-opened');
      $('.guides__search').removeClass('is-active');
      $('.guides__search-field').removeClass('is-opened');
      setTimeout(function(){
        $('.current-page').removeClass('is-search');
        $('html').removeClass('no-scroll');
        searchFieldFlag = false;
        resultsLinks.removeClass('is-inactive');
        resultsText.text( $('.search-results__number').data('links') );
      }, 280)
    }

    $('.guides__search').on('click', function(e){
      if( !$(this).hasClass('is-active') ) {
        openSearchField();
      }
    });

    $('.guides__search-close').on('click', function(e){
      e.stopPropagation();
      closeSearchField();

      $('.search-results-bg').removeClass('is-active');
      setTimeout(function() {
        resultsBlock.removeClass('is-opened');
        setTimeout(function() {
          resultsTotal.text('');
          resultsInfo.html('');
          $('.guides__search-input').val('');
        }, 150);
      }, 130);
    });

    // Search 
    const searchInput = $('.guides__search-input');
    let searchQueryLength = 3;

    let searchJSONData = '';
    let searchDataLoaded = false;

    let searchScores = {
      'queryInTitle': 10,
      'queryIncontent': 8,
      'wordInTitle': 3,
      'wordInContent': 0.5,
      'maxWordInContentScore': 2.5,
      'queryInKeywords': 7
    }
  
    const getSearchJSONonPageLoad = function() {
      
    }

    var checkIfObjectExists = function( id ) {
      var exists = false;
      var arrayKey = '';
      $.each( searchResuls, function(key) {
        if( searchResuls[key]['id'] == id ) {
          exists = true;
          arrayKey = key;
        }
      });
  
      return {
        'exists' : exists,
        'key' : arrayKey
      };
    }

    let app = window.location.href.split('/')[5];
    // $.getJSON( "/support/guide/builds/" + app + "/latestBuild.json", function(data) {
      // searchJSONData = data;
      // searchDataLoaded = true;
      //searchInJSONData( val );
    // });

    var getSearchResults = function( val ) {
      if( searchDataLoaded ) {
        //searchInJSONData( val );
      }
      // } else {
      //   $.getJSON( "/support/guide/builds/" + app + "/latestBuild.json", function(data) {
      //     searchJSONData = data;
      //     searchDataLoaded = true;
      //     searchInJSONData( val );
      //   });
      // }
    }

    var sortResults = function(arrayToSort, key) {
      return arrayToSort.sort(function (a, b) {
          var x = a[key];
          var y = b[key];
          return ((x > y) ? -1 : ((x < y) ? 1 : 0));
      });
    }
  
    let resultsTotal = $('.search-results__number-count');
    let resultsText = $('.search-results__number-text');
    let resultsBlock = $('.search-results');
    let resultsInfo = $('.search-results__results');
    let resultsLinks = $('.search-results__links');
    var showSearchResults = function( resultsArray ) {
      resultsTotal.text( resultsArray.length );

      resultsInfo.html('');
  
      let results = '';
  
      $.each(resultsArray, function( key ) {
        var item = resultsArray[key];
        var $localContent = $('<div>' + item.content.replace(/<h1>(.*?)<\/h1>/g, '').substr(0, 300) +'</div>').text().substr(0,87);
        results += '<div class="search-results__item"><a href="/support/guide/' + $currentApp + '/'+ item.id + '"><h3 class="search-results__item-title">' + item.name + '</h3><p class="search-results__item-description"> ' + $localContent + '...' + '</p></a></div>';
      });
  
      resultsText.text( $('.search-results__number').data('results') );
      resultsLinks.addClass('is-inactive');
      resultsInfo.append(results);
    }

    var searchInJSONData = function( val ) {
      searchResuls = [];
  
      var trimmedVal = $.trim(val).toLowerCase();
      var queryParts = trimmedVal.split(' ');
  
      $.each( searchJSONData['content'], function( key ) {
        var name = searchJSONData['content'][key]['name'];
        var content = searchJSONData['content'][key]['content'];
        let keywords = searchJSONData['content'][key]['keywords'];

        if( content.replace(/<h1>(.*?)<\/h1>/g, '').substr(0, 300).length > 1 ) {
  
          if( name.toLowerCase().indexOf( trimmedVal ) >= 0 ) {
            var articleObj = {
              'id': key,
              'name': name,
              'content': content,
              'score': searchScores.queryInTitle
            }
            searchResuls.push(articleObj);
          }
          if( content.toLowerCase().indexOf( trimmedVal ) >= 0 ) {
            var articleObj = {
              'id': key,
              'name': name,
              'content': content,
              'score': searchScores.queryInTitle
            }
            let checkResult = checkIfObjectExists( key );
            if( checkResult.exists ) {
              searchResuls[checkResult.key]['score'] = searchResuls[checkResult.key]['score'] + searchScores.queryInTitle;
            } else {
              searchResuls.push(articleObj);
            }
          }
          if( keywords.toLowerCase().indexOf( trimmedVal ) >= 0 ) {
            var articleObj = {
              'id': key,
              'name': name,
              'content': content,
              'score': searchScores.queryInKeywords
            }
            let checkResult = checkIfObjectExists( key );
            if( checkResult.exists ) {
              searchResuls[checkResult.key]['score'] = searchResuls[checkResult.key]['score'] + searchScores.queryInKeywords;
            } else {
              searchResuls.push(articleObj);
            }
          }
          if( queryParts.length > 1 ) {
            $.each( queryParts, function( index ) {
              if( queryParts[ index ] != '' && name.toLowerCase().indexOf( queryParts[index].toLowerCase() ) >= 0 ) {
                var articleObj = {
                  'id': key,
                  'name': name,
                  'content': content,
                  'score': searchScores.wordInTitle
                }
                let checkResult = checkIfObjectExists( key );
                if( checkResult.exists ) {
                  searchResuls[checkResult.key]['score'] = searchResuls[checkResult.key]['score'] + searchScores.wordInTitle;
                } else {
                  searchResuls.push(articleObj);
                }
              }
              if ( queryParts[ index ] != '' && content.toLowerCase().indexOf( queryParts[index].toLowerCase() ) >= 0 ) {
                var count = content.toLowerCase().split(queryParts[ index ]).length - 1;
                let wordInContentScore = searchScores.wordInContent * count > searchScores.maxWordInContentScore ? searchScores.maxWordInContentScore : searchScores.wordInContent * count;
  
                var articleObj = {
                  'id': key,
                  'name': name,
                  'content': content,
                  'score': wordInContentScore
                }
                let checkResult = checkIfObjectExists( key );
                if( checkResult.exists ) {
                  searchResuls[checkResult.key]['score'] = searchResuls[checkResult.key]['score'] + wordInContentScore;
                } else {
                  searchResuls.push(articleObj);
                }
              }
            });
          }
  
        }
      } )
      var resultsToShow =  sortResults(searchResuls, 'score');
  
      showSearchResults( resultsToShow );
    }
    const checkSearchInput = function(){
      if( searchInput.val() && searchInput.val().length >= searchQueryLength){
        $('html').addClass('no-scroll');
        let val = searchInput.val();
        getSearchResults( val );
      } else if ( searchInput.val().length < searchQueryLength ) {
        resultsTotal.text('');
        resultsInfo.html('');
        resultsLinks.removeClass('is-inactive');
        resultsText.text( $('.search-results__number').data('links') );
      }
    }
    searchInput.on('paste cut', function(){
      setTimeout(() => {
        checkSearchInput();
      }, 100);
    })
    searchInput.on('keyup', function(e){
      if( e.keyCode == 40 || e.keyCode == 38 ) return false;
      if( e.keyCode == 13 && $('.search-results__item a.is-activated').length ) {
        window.location.href = $('.search-results__item a.is-activated').attr('href');
        return false;
      }
      if( e.keyCode != 37 && e.keyCode != 39 ) {
        checkSearchInput();
      }
    });

    $("body").on("keydown", ".guides__search-input", function (e) {
      if (e.keyCode == 13) {
        e.preventDefault();
        return false;
      }
    });

    const closeMainNav = ( closeAll ) => {
      let $this = $('.current-page__hamburger-btn');
      let $mainNav = $('.main-nav');
      let $mainNavLink = $('.main-nav__nav-link');
      let $mainNavBG = $('.main-nav__bg');
      
      if( !closeAll ) {
        $mainNav.removeClass('is-visible');
        $mainNavBG.addClass('is-invisible');
        setTimeout(() => {
          $mainNavBG.removeClass('is-invisible');
        }, 400)
      }
      $this.removeClass('is-opened')
      $mainNavLink.removeClass('is-opened');
      $('html').removeClass('stop-scroll');
      setTimeout( () => {
        $mainNav.removeClass('is-opened');
        setTimeout(() => {
          $mainNav.removeClass('is-visible');
        }, 550)
      }, 100);
      setTimeout(() => {
        $mainNavBG.removeClass('is-active');
      }, 170)
      if( closeAll ) $('.current-page').removeClass('is-opened');
    }

    $('.current-page__cta.is-contents .current-page__cta-btn.is-search').on('click', function(){
      let $this = $('.guide-current-page__title');
      let $searchWrapper = $('.guides__search-wrapper');
      let $searchBG = $('.search-results-bg');
      let $currentPageNav = $('.current-page');

      if( $this.hasClass('is-opened') ) {
        $('html').removeClass('no-scroll');
        $this.removeClass('is-opened');
        $searchWrapper.removeClass('is-active');
        $searchBG.removeClass('is-active--mobile');
        
        $('.search-results-bg').removeClass('is-active');
        setTimeout(function() {
          resultsBlock.removeClass('is-opened');
          setTimeout(function() {
            resultsTotal.text('');
            resultsInfo.html('');
            $('.guides__search-input').val('');
            setTimeout(() => {
              $currentPageNav.removeClass('is-opened');
            }, 130)
          }, 150);
        }, 130);
      } else {
        $currentPageNav.addClass('is-opened');
        closeMainNav( false );
        $this.addClass('is-opened');
        $searchWrapper.addClass('is-active');
        $('.guides__search-input').focus();
        $searchBG.addClass('is-active--mobile');
        $('html').addClass('no-scroll');
        $('.search-results-bg').addClass('is-active');
        resultsBlock.addClass('is-opened');
      }

      return false;
    });

    $(document).on('mouseenter', '.search-results__item a', function(){
      $(this).addClass('is-hovered');
      $('.search-results__item a').removeClass('is-activated');
    }).on('mouseleave', '.search-results__item a', function(){
      $(this).removeClass('is-hovered');
    });

    $(document).on("keydown", function (e) {
      if (e.keyCode == 27 && $('.guides__search-field').hasClass('is-opened')) { // esc
        searchInput.val('');
        $('.search-results-bg').removeClass('is-active');
        setTimeout(function() {
          $('html').removeClass('no-scroll');
          resultsBlock.removeClass('is-opened');
          
          setTimeout(function() {
            resultsTotal.text('');
            resultsInfo.html('');
            closeSearchField();
          }, 150);
        }, 130);
      }	
      if( e.keyCode == 38 ) {  // up
        e.preventDefault();
        let linksItem;
        if( $('.search-results__links').hasClass('is-inactive') ) {
          linksItem = $('.search-results__results').find('.search-results__item');
        } else {
          linksItem = $('.search-results__links').find('.search-results__item');
        }
        arrowNavBetweenItems( linksItem, 'previous' );
      }
      if( e.keyCode == 40 && $('.search-results.is-opened') ) { // down
        e.preventDefault();
        let linksItem;
        if( $('.search-results__links').hasClass('is-inactive') ) {
          linksItem = $('.search-results__results').find('.search-results__item');
        } else {
          linksItem = $('.search-results__links').find('.search-results__item');
        }
        arrowNavBetweenItems( linksItem, 'next' );
      }
      if( e.keyCode == 13 && $('.search-results__item a.is-activated').length ) {
        window.location.href = $('.search-results__item a.is-activated').attr('href');
      }
    });

    const arrowNavBetweenItems = function( linksItem, direction ) {
      let step = direction == 'next' ? 1 : -1;
      
      if( linksItem.find('a.is-activated').length ) {
        linksActive = linksItem.find('a.is-activated').closest('.search-results__item').index();
      } else if ( linksItem.find('a.is-hovered').length ) {
        linksActive = linksItem.find('a.is-hovered').closest('.search-results__item').index();
      } else {
        linksActive =  -1;
      }

      if( direction == 'next' ) {
        linksActive = linksActive > linksItem.length - 2 ? -1 : linksActive;

        if( linksActive == -1 ) {
          $('.search-results__block').scrollTop(0);
        } else {
          let searchResultsBottom = $('.search-results').offset().top + parseInt( $('.search-results').css('padding-top') ) + $('.search-results').height();
          let activeBottom = linksItem.eq( linksActive + step ).offset().top + linksItem.eq( linksActive + step ).height();
          let searchResulsScrollTop = $('.search-results__block').scrollTop();
          if( activeBottom > searchResultsBottom ) {
            $('.search-results__block').scrollTop( searchResulsScrollTop + (activeBottom - searchResultsBottom) );
          }
        }
      }
      if( direction == 'previous' ) {
        linksActive = linksActive < 0 ? linksItem.length : linksActive;

        if( linksActive == linksItem.length || linksActive == 0 ) {
          $('.search-results__block').scrollTop( linksItem.eq( linksItem.length - 1 ).offset().top );
        } else {
          let searchResultsTop = $('.search-results').offset().top + parseInt( $('.search-results').css('padding-top') ) ;
          let activeTop = linksItem.eq( linksActive + step ).offset().top;
          let searchResulsScrollTop = $('.search-results__block').scrollTop();
          if( activeTop < searchResultsTop ) {
            $('.search-results__block').scrollTop( searchResulsScrollTop - (searchResultsTop - activeTop) );
          }
        }
      }

      linksItem.find('a').removeClass('is-activated is-hovered');
      linksItem.eq( linksActive + step ).find('a').addClass('is-activated');
    }
  });
}) (jQuery)