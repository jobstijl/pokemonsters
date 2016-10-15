/**
 * This class is the main view for the application. It is specified in app.js as the
 * "mainView" property. That setting automatically applies the "viewport"
 * plugin causing this view to become the body element (i.e., the viewport).
 *
 * TODO - Replace this content of this view to suite the needs of your application.
 */
Ext.define('Pokemonsters.view.main.Main', {
    extend: 'Ext.tab.Panel',
    xtype: 'app-main',
    layout: 'fit',

    requires: [
        'Ext.plugin.Viewport',
        'Ext.window.MessageBox',

        'Pokemonsters.view.main.MainController',
        'Pokemonsters.view.main.MainModel',
        'Pokemonsters.view.main.List'
    ],

    controller: 'main',
    viewModel: 'main',

    ui: 'navigation',

    tabBarHeaderPosition: 1,
    titleRotation: 0,
    tabRotation: 0,

    header: {
        layout: {
            align: 'stretchmax'
        },
        title: {
            bind: {
                text: '{name}'
            },
            flex: 0
        },
        iconCls: 'fa-th-list'
    },

    tabBar: {
        flex: 1,
        layout: {
            align: 'stretch',
            overflowHandler: 'none'
        }
    },

    responsiveConfig: {
        tall: {
            headerPosition: 'top'
        },
        wide: {
            headerPosition: 'left'
        }
    },

    defaults: {
        bodyPadding: 20,
        tabConfig: {
            plugins: 'responsive',
            responsiveConfig: {
                wide: {
                    iconAlign: 'left',
                    textAlign: 'left'
                },
                tall: {
                    iconAlign: 'top',
                    textAlign: 'center',
                    width: 120
                }
            }
        }
    },

    items: [{
        title: 'Home',
        iconCls: 'fa-home',
        layout: 'fit',
        items: [{
            xtype: 'mainlist'
        }]
    }, {
        title: 'About',
        iconCls: 'fa-user',
        bind: {
            html: 'Pokemonsters test app, geschreven door Job van der Weiden'
        }
    }]
});
