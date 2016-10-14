/**
 * This view is an example list of people.
 */
Ext.define('Pokemonsters.view.main.List', {
    extend: 'Ext.grid.Panel',
    xtype: 'mainlist',

    requires: [
        'Pokemonsters.store.Pokemon'
    ],

    title: 'Pokemon',

    store: {
        type: 'pokemon'
    },

    columns: [
        { text: 'Name',  dataIndex: 'name', width: 100 },
        { text: 'type', dataIndex: 'type_1', width: 100 },
        { text: 'max cp', dataIndex: 'max_cp', width: 150 }
    ],

    listeners: {
        select: 'onItemSelected'
    }
});
