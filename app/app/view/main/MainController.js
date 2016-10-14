/**
 * This class is the controller for the main view for the application. It is specified as
 * the "controller" of the Main view class.
 *
 * TODO - Replace this content of this view to suite the needs of your application.
 */
Ext.define('Pokemonsters.view.main.MainController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.main',

    onItemSelected: function (sender, record) {
      console.log("tralala", sender, record);
      Ext.Viewport.add({
          xtype: 'formpanel',
          title: 'Update Record',
          floating: true,
          centered: true,
          width:300,
          modal: true,
          record: record,
          viewModel : {
              data: {
                  pokemon: record
              }
          },
          items: [{
              xtype: 'textfield',
              name: 'index',
              label: 'index',
              bind: '{pokemon.index}',
              value: record.data.index
          },
          {
              xtype: 'textfield',
              name: 'name',
              label: 'name',
              bind: '{pokemon.name}',
              value: record.data.name
          },{
              xtype: 'textfield',
              name: 'type_1',
              label: 'type 1',
              bind: '{pokemon.type_1}',
              value: record.data.type_1
          },{
              xtype: 'textfield',
              name: 'type_2',
              label: 'type 2',
              bind: '{pokemon.type_2}',
              value: record.data.type_2
          },{
              xtype: 'textfield',
              name: 'max_cp',
              label: 'max cp',
              bind: '{pokemon.max_cp}',
              value: record.data.max_cp
          },{
              xtype: 'textfield',
              name: 'max_hp',
              label: 'max hp',
              bind: '{pokemon.max_hp}',
              value: record.data.max_hp
          }, {
              xtype: 'toolbar',
              docked: 'bottom',
              items: ['->', {
                  xtype: 'button',
                  text: 'Submit',
                  iconCls: 'x-fa fa-check',
                  handler: function() {
                      let form = this.up('formpanel');
                      // form.submit();
                      record.save();
                      form.destroy();
                  }
              }, {
                  xtype: 'button',
                  text: 'Cancel',
                  iconCls: 'x-fa fa-close',
                  handler: function() {
                      this.up('formpanel').destroy();
                  }
              }]
          }]
      });
    }
});
