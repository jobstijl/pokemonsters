Ext.define('Pokemonsters.store.Pokemon', {
    extend: 'Ext.data.Store',

    alias: 'store.pokemon',

    model: 'Pokemonsters.model.Pokemon',
    // filters: [{
    //      property: 'name',
    //      value: /Weedle/
    //  }],

    autoLoad: true
});
