/**
 * This view is an example list of people.
 */
Ext.define('Pokemonsters.view.main.List', {
    extend: 'Ext.grid.Panel',
    xtype: 'mainlist',
    //height: 600,

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
    }
});
