/**
 * This class is the controller for the main view for the application. It is specified as
 * the "controller" of the Main view class.
 *
 * TODO - Replace this content of this view to suite the needs of your application.
 */
Ext.define('Pokemonsters.view.main.MainController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.main',

    onItemSelected: function (sender, idx, row, record) {
      console.log("tralala", arguments);
      Ext.Viewport.add({
          xtype: 'formpanel',
          title: 'Update Record',
          floating: true,
          centered: true,
          width:300,
          modal: true,
          padding: 20,
          viewModel : {
              data: {
                  pokemon: record
              }
          },
          items: [{
              xtype: 'textfield',
              name: 'index',
              label: 'index',
              disabled: true,
              bind: '{pokemon.index}'
          },
          {
              xtype: 'textfield',
              name: 'name',
              label: 'name',
              bind: '{pokemon.name}'
          },{
              xtype: 'textfield',
              name: 'type_1',
              label: 'type 1',
              bind: '{pokemon.type_1}'
          },{
              xtype: 'textfield',
              name: 'type_2',
              label: 'type 2',
              bind: '{pokemon.type_2}'
          },{
              xtype: 'numberfield',
              name: 'max_cp',
              label: 'max cp',
              bind: '{pokemon.max_cp}'
          },{
              xtype: 'numberfield',
              name: 'max_hp',
              label: 'max hp',
              bind: '{pokemon.max_hp}'
          }, {
              xtype: 'toolbar',
              docked: 'bottom',
              items: ['->', {
                  xtype: 'button',
                  text: 'Submit',
                  iconCls: 'x-fa fa-check',
                  handler: function() {
                      var form = this.up('formpanel');
                      form.mask({
                        xtype: 'loadmask',
                        message: 'Saving'
                      });
                      record.save({
                        success: function() {
                          form.destroy();
                        },
                        failure: function() {
                          Ext.Msg.alert('Error', 'Save failed');
                          form.unmask();
                        }
                      });
                  }
              }, {
                  xtype: 'button',
                  text: 'Cancel',
                  iconCls: 'x-fa fa-close',
                  handler: function() {
                    record.reject();
                    this.up('formpanel').destroy();
                  }
              }]
          }]
      });
    }
});
