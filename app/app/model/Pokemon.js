Ext.define('Pokemonsters.model.Pokemon', {
    extend: 'Ext.data.Model',


    fields: [
        'index','name', 'type_1', 'type_2','max_cp','max_hp'
    ],
    proxy: {
        type: 'rest',
        url: '/pokemons'
    }
});