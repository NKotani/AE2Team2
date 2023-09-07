<template>
  <v-app>
    <v-main>
      <v-container>
        <v-row class="my-1">
          <v-col cols="1" class="d-flex align-left">
            <v-img
              :src="require('../assets/shopping.svg')"
              contain
              max-height="38"
              max-width="38"
            />
          </v-col>
          <v-col class="align-left text-h4">買い物リスト</v-col>
      	</v-row>

        <v-row class=''>
          <v-col>
            <v-card tile class='mx-auto' outlined>
              <v-list>
                <v-list-item-group v-model="selectedItems" color="gray" multiple>
                  <v-list-item v-for="(item, i) in query" :key="i" :href="item.recipeUrl">
                    <v-list-item-content>
                      <v-list-item-title>{{ item.name }}  {{ item.amount+item.unit }}</v-list-item-title>
                    </v-list-item-content>
                    <v-list-item-content>
											<v-list-item-title>{{ item.recipeTitle }}</v-list-item-title>
										</v-list-item-content> 
									</v-list-item>
                </v-list-item-group>
              </v-list>
            </v-card>
          </v-col>
        </v-row>

        </v-container>
      </v-main>
    </v-app>
  </template>
  
  <script>
  export default {
    data () {
      return {
        headers: [
          {
            text: '食材',
            align: 'start',
            sortable: false,
            value: 'name',
          },
          { text: '量', value: 'amount'},
          { text: '', value: 'unit' },
          { text: 'レシピ', value: 'recipeTitle' },
          { text: '', value: 'recipeUrl' },
        ],
        query: [
        {
            name: "ウインナー",
            amount: 5,
            unit: "本",
            recipeTitle: "子供が喜ぶウインナーとジャガイモのチーズ焼き",
            recipeUrl: "https://recipe.rakuten.co.jp/recipe/1900012525/",
        },
      ],
      }
    },
  }
  </script>
  