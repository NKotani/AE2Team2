<template>
  <v-app>
    <v-main>
    <v-container>
      <v-row class="my-1">
        <v-col class="d-flex align-left">
          <v-btn elevation="2" @click="go_back()">
            <v-icon right dark class="mx-0"> mdi-menu-left-outline </v-icon
            >検索画面に戻る</v-btn
          ></v-col
        > </v-row
      ><v-row class="my-1">
        <v-col>
          <v-card tile class="mx-auto" color="#E0E0E0" outlined>
            <div class="ma-2">
              <v-row class="mx-1">
                <v-card-title class="justify-start text-h6">検索した条件</v-card-title>
              </v-row>
              <v-row 
                class="mx-5 my-0" 
                v-for="(item, i) in requestData.conditions" 
                :key="i" 
                cols="12"
              >
                <span>
                  食材：{{ item.name }}, 量：{{ item.amount }}{{ item.unit }}
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
          <h2 v-if="recipes !== null">検索結果： {{ recipes.length }}件</h2>
          <h2 v-else>検索結果： 0件</h2>
          <v-card tile class="mx-auto" color="#FFECB3" outlined>
            <v-row justify="end" class="mx-10 mt-1">
              <v-col cols="12" sm="3">
                <!--<v-select :items="items" label="並べ替え" dense></v-select>-->
              </v-col>
            </v-row>

            <v-container>
              <v-row v-if="recipes !== null" dense>
                <v-col v-for="(item, i) in recipes" :key="i" cols="12">
                  <v-card color="" class="mx-10 my-2" @click="to_recipe(item.id)">
                    <div class="d-flex">
                      <v-avatar class="ma-3" size="125" tile>
                        <v-img :src="item.recipe_image_url"></v-img>
                      </v-avatar>
                      <!--<v-img :src="item.recipe_image" class="ma-3" max-height="100" max-width="150"></v-img> -->
                      <div>
                        <!-- v-text="item.recipe_name"-->
                        <v-card-title class="text-h5">{{ item.recipe_name }}（{{ String(item.serving_size) }}人前）</v-card-title>
                        <span v-for="food in item.ingredients" :key="food" class="ml-5">
                          <span class="font-weight-bold">
                            {{ food.name }}：
                          </span>
                          <span v-if="food.amount !== 0">
                            {{ food.amount }}{{ food.unit }}
                          </span>
                          <span v-else>
                            {{ food.unit }}
                          </span>
                          <br>
                        </span>
                      </div>
                    </div>
                  </v-card>
                </v-col>
              </v-row>
              <v-row v-else dense>
                
                <v-col cols="12">
                  <v-card color="" class="mx-10 my-2">
                    <div class="d-flex">
                      <v-card-title class="text-h5">レシピが見つかりませんでした</v-card-title>
                    </div>
                  </v-card>
                </v-col>
              </v-row>
            </v-container>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
    </v-main>
  </v-app>
</template>

<script>

export default {
  data() {
    return {
      requestData: {
        conditions: [],
        quantity: 1,
      },
      recipes: [],
    };
  },
  created() {
    this.setData();
  },
  methods: {
    setData() {
      const data = this.$store.state.responseData;
      if (data) {
        this.requestData = data.request_data || {};
        this.recipes = data.recipes || [];
      }
    },
    go_back() {
      this.$router.push('/');
    },
    to_recipe(recipeId) {
      this.$store.commit('setFromSearchPage', true);
      this.$router.push({ path: '/recipe', query: { id: recipeId } });
    },
  },
};
</script>

<style>
</style>
