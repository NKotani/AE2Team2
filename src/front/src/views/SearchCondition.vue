<template>  
    <v-card
        class = "my-5"
        color="#f5f5dc"
    >
    <v-row>
        <v-col cols = "5" align="center"> 食材名 </v-col>
        <v-col cols = "4" align="center"> 量 </v-col>
        <v-col cols = "2"> </v-col>
    </v-row>
        <v-form>
            <v-container fluid>
                <v-row>
                    <v-col cols = "5">
                        <v-text-field
                            v-model="ingredient"
                            @change="$emit('inputg', index, ingredient)"
                            solo
                        ></v-text-field>
                    </v-col> 
                    <v-col cols = "2">
                        <v-text-field 
                            v-model="amount"
                            @change="$emit('inputam', index, amount)"
                            solo
                        ></v-text-field>
                    </v-col>
                    <v-col cols = "2">
                        <v-select 
                            v-model="unit"
                            @change="$emit('inputuni', index, unit)" 
                            label="単位"
                            :items="['個', '本', '枚', '匹', '尾', '切れ', '', 'mg', 'g', 'mL', 'L']"
                        ></v-select>
                    </v-col>
                    <v-col cols = "2" align="center">
                        <v-icon @click="$emit('trash', index)"> mdi-trash-can-outline</v-icon>
                    </v-col>
                </v-row>
            </v-container>
        </v-form>
    </v-card>
</template>

<script>

export default {
    name: 'SearchCondition',

    components: {

    },

    props: {
        index: Number,
        /*ingredient: String*/
    },

    data: () => ({
        ingredient: '',
        unit: '',
        amount: '',
    }),

    methods: {
        changeAmount: function(){
            console.log(this.amount);
        }
    }
}
</script>