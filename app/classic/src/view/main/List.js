/**
 * This view is an example list of people.
 */
Ext.define('Pokemonsters.view.main.List', {
    extend: 'Ext.grid.Panel',
    xtype: 'mainlist',
    //height: 600,
    layout: 'fit',
    scrollable: true,

    requires: [
        'Pokemonsters.store.Pokemon',
        'Pokemonsters.model.Pokemon'
    ],

    title: 'Pokemon',

    store: {
        type: 'pokemon'
    },

    columns: [
        { text: 'index' , dataIndex: 'index' , width: 60  },
        { text: 'Name'  , dataIndex: 'name'  , width: 100 },
        { text: 'type1' , dataIndex: 'type_1', width: 100 },
        { text: 'type2' , dataIndex: 'type_2', width: 100 },
        { text: 'max cp', dataIndex: 'max_cp', width: 100 },
        { text: 'max hp', dataIndex: 'max_hp', width: 100 }
    ],

    listeners: {
        itemclick: 'onItemSelected'
        // {
        //     trala: record,
        //     //element: 'el', //bind to the underlying el property on the panel
        //     fn: function(){ // ( this , record , item , index , e , eOpts )
        //       console.log('args', arguments);
        //       //Ext.Msg.alert("edit the shizzle");
        //       Ext.Viewport.add({
        //           xtype: 'formpanel',
        //           title: 'Update Record',
        //           floating: true,
        //           centered: true,
        //           width:300,
        //           modal: true,
        //           padding: 20,
        //
        //           viewModel : {
        //               data: {
        //                   pokemon: record
        //               }
        //           },
        //           items: [{
        //               xtype: 'textfield',
        //               name: 'index',
        //               label: 'index',
        //               disabled: true,
        //               bind: '{pokemon.index}'
        //           },
        //           {
        //               xtype: 'textfield',
        //               name: 'name',
        //               label: 'name',
        //               bind: '{pokemon.name}'
        //           },{
        //               xtype: 'textfield',
        //               name: 'type_1',
        //               label: 'type 1',
        //               bind: '{pokemon.type_1}'
        //           },{
        //               xtype: 'textfield',
        //               name: 'type_2',
        //               label: 'type 2',
        //               bind: '{pokemon.type_2}'
        //           },{
        //               xtype: 'numberfield',
        //               name: 'max_cp',
        //               label: 'max cp',
        //               bind: '{pokemon.max_cp}'
        //           },{
        //               xtype: 'numberfield',
        //               name: 'max_hp',
        //               label: 'max hp',
        //               bind: '{pokemon.max_hp}'
        //           }, {
        //               xtype: 'toolbar',
        //               docked: 'bottom',
        //               items: ['->', {
        //                   xtype: 'button',
        //                   text: 'Submit',
        //                   iconCls: 'x-fa fa-check',
        //                   handler: function() {
        //                       var form = this.up('formpanel');
        //                       form.mask({
        //                         xtype: 'loadmask',
        //                         message: 'Saving'
        //                       });
        //                       record.save({
        //                         success: function() {
        //                           form.destroy();
        //                         },
        //                         failure: function() {
        //                           Ext.Msg.alert('Error', 'Save failed');
        //                           form.unmask();
        //                         }
        //                       });
        //                   }
        //               }, {
        //                   xtype: 'button',
        //                   text: 'Cancel',
        //                   iconCls: 'x-fa fa-close',
        //                   handler: function() {
        //                     record.reject();
        //                     this.up('formpanel').destroy();
        //                   }
        //               }]
        //           }]
        //       });
        //     }
        //}
    }
    // listeners: {
    //     rowbodyclick: 'onItemSelected'
    // }
});
