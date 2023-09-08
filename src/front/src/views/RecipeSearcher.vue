<template>
    <v-app>
        <v-main>
        <v-container>
            <v-row>
                <v-col>
                    <v-app-bar
                        dense
                        color="orange"
                        elevation="3"
                        rounded
                    >余った食材で検索 </v-app-bar>
                </v-col>
            </v-row>
            <v-row>
                <v-col>
                <v-btn
                    disabled
                    elevation="2"
                    large
                    > 余っている食材 </v-btn>
                </v-col>
                <v-col>        
                    <v-btn
                    class="mx-2"
                    fab
                    density="compact"
                    @click="addCondition()"
                    >
                    <v-icon>
                        mdi-plus
                    </v-icon>
                    </v-btn>
                </v-col>
            </v-row>
            <v-row>
                <v-container>
                    <v-col 
                    cols="12"
                    >
                        <SearchCondition 
                        v-for="(condition, index) in formData.conditions"
                        v-bind:key="condition.conditionId"
                        :index="index"
                        :ingredient="condition.ingredient"
                        :amount="condition.amount"
                        :unit="condition.unit"
                        @trash="deleteCondition"
                        @inputg="setIngredient"
                        @inputam="setAmount"
                        @inputuni="setUnit"/>
                    </v-col>
                </v-container>
            </v-row>
            <v-row>
                <v-form fast-fail @submit.prevent>
                    <v-container>
                    <v-row>
                        <v-col>
                            <v-text-field
                                v-model="formData.quantity"
                                label="-人前"
                            ></v-text-field>
                        </v-col>
                        <v-col>
                        <v-btn @click="sendData()"  block class="mt-2"> 検索</v-btn> 
                        </v-col>
                    </v-row>
                    </v-container>
                </v-form>
            </v-row>
        </v-container>
        </v-main>
    </v-app>
</template>

<script>
import SearchCondition from './SearchCondition';
import axios from 'axios';


export default {
    name: 'App',

    components: {
        SearchCondition
    },

    data: () => ({
        conditionId: 0,
        maxCount: 1000,

        formData:{
            quantity:'',
            conditions:[
                {
                    conditionId:0,
                    ingredient:'',
                    amount:'',
                    unit:''
                },
            ]
        },
    }),

    methods: {
        addCondition: function() {
            if(this.maxCount<=++this.conditionId) this.conditionId = 0;
            this.formData.conditions.push({
                conditionId:this.conditionId,
                ingredient:'',
                amount:'',
                unit:'',
                priority:'',
            });
        },
        
        deleteCondition: function(index) {
            // console.log('delete' + index);
            this.formData.conditions.splice(index, 1);
        },

        setIngredient: function(index, value) {
            // console.log('value = '+ value);
            this.formData.conditions[index].ingredient = value;
        },

        setAmount: function(index, value) {
            this.formData.conditions[index].amount = value;
        },
        
        setUnit: function(index, value) {
            // console.log('setUnit');
            this.formData.conditions[index].unit = value;
        },

        sendData: async function(){
            const payload = {
                conditions: this.formData.conditions.map(condition => ({
                    id: condition.conditionId,
                    name: condition.ingredient,
                    amount: parseInt(condition.amount, 10),
                    unit: condition.unit
                })),
                quantity: parseInt(this.formData.quantity, 10)
            };
            

            // Send a POST request
            await axios.post('/search', payload, {
                headers: {
                    'Content-Type': 'application/json',
                },
            })
            .then(response => {
                // Vuexストアにデータを保存
                this.$store.commit('setResponseData', response.data);

                // ルートを変更
                this.$router.push('/searcher');
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
    }
};
</script>