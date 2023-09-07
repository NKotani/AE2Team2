<template>
  <v-app>
    <v-container>
      <v-row class="my-1">
        <v-col class="d-flex align-left">
          <v-btn elevation="2">
            <v-icon right dark class="mx-0"> mdi-menu-left-outline </v-icon
            >検索画面に戻る</v-btn
          ></v-col
        > </v-row
      ><v-row class="my-1">
        <v-col>
          <v-card tile class="mx-auto" color="#E0E0E0" outlined>
            <div class="ma-2">
              <v-row class="mx-1">
                <v-card-title class="justify-start text-h6">検索した条件</v-card-title
                ></v-row
              >
              <v-row
                class="mx-5 my-0"
                v-for="(item, i) in query"
                :key="i"
                cols="12"
              >
                <span>
                  食材:{{ item.ingredient }}, 量:{{ item.amout }}{{ item.unit }}
                </span>
              </v-row>
              <!-- <v-list-item v-for="n in 3" :key="n"
              ><v-list-item-title>aaa</v-list-item-title></v-list-item
            > -->
            </div>
          </v-card></v-col
        >
      </v-row>

      <v-row class="my-1">
        <v-col>
          <v-card tile class="mx-auto" color="#FFECB3" outlined>
            <v-row justify="end" class="mx-10 mt-1">
              <v-col cols="12" sm="3"><v-select
                  :items="items"
                  label="並び替え"
                  dense
                ></v-select></v-col
            ></v-row>

            <v-container>
              <v-row dense>
                <v-col v-for="(item, i) in recipes" :key="i" cols="12">
                  <v-card color="" class="mx-10 my-2">
                    <div class="d-flex">
                      <v-avatar class="ma-3" size="125" tile>
                        <v-img :src="item.foodImageUrl"></v-img>
                      </v-avatar>
<!-- <v-img :src="item.recipe_image" class="ma-3" max-height="100" max-width="150"></v-img> -->
                      <div>
                        <v-card-title
                          class="text-h5"
                          v-text="item.recipeTitle"
                        ></v-card-title>

                        <span
                          v-for="food in item.recipeMaterial"
                          :key="food"
                          class="ml-5"
                        >
                          <span
                            v-if="is_searched(food)"
                            class="font-weight-bold"
                            >{{ food }}</span
                          >
                          <span v-else>{{ food }}</span>
                        </span>
                      </div>
                    </div>
                  </v-card>
                </v-col>
              </v-row>
            </v-container></v-card
          >
        </v-col>
      </v-row>
    </v-container>
  </v-app>
</template>

<script>
// import { defineComponent } from '@vue/composition-api'
export default {
  data: () => ({
    items: ['人気順', '追加が必要な材料が少ない順'],
    query: [
      {
        ingredient: 'じゃがいも',
        amout: 100,
        unit: 'g',
      },
      {
        ingredient: 'たろいも',
        amout: 200,
        unit: 'g',
      },
      {
        ingredient: 'さといも',
        amout: 300,
        unit: 'g',
      },
    ],
    recipes: [
      {
        foodImageUrl: 'https://cdn.vuetifyjs.com/images/cards/halcyon.png',
        recipeTitle: 'おにぎり',
        recipeMaterial: ['米', 'おかか', '塩'],
      },
      {
        foodImageUrl: 'https://cdn.vuetifyjs.com/images/cards/foster.jpg',
        recipeTitle: 'パスタ',
        recipeMaterial: ['めん', 'ソース'],
      },
      {
        foodImageUrl:
          'https://images.unsplash.com/photo-1598439210625-5067c578f3f6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80',
        recipeTitle: 'うどん',
        recipeMaterial: ['めん', 'じゃがいも'],
      },
      {
        foodImageUrl: 'https://cdn.vuetifyjs.com/images/cards/foster.jpg',
        recipeTitle: 'そば',
        recipeMaterial: ['めん', 'つゆ', '天ぷら'],
      },
    ],
  }),
  computed: {
    // is_searched(word) {
    //   console.log(word);
    //   console.log(this.query.ingredient);
    //   return true;
    // },
  },
  methods: {
    is_searched(word) {
      for (let i = 0; i < this.query.length; i += 1) {
        if (this.query[i].ingredient.includes(word)) {
          return true;
        }
      }
      return false;
    },
  },
};
</script>

<style>
</style>
