<template>
  <v-main>
    <v-app>
      <v-container>
        <!-- レシピ概要 -->
        <v-row class='my-1'>
          <v-col class='d-flex align-left'>
            <v-btn elevation="2" @click="go_back()" v-if="fromSearchPage">
              <v-icon right dark class="mx-0"> mdi-menu-left-outline </v-icon>
              検索画面結果に戻る
            </v-btn>
          </v-col>
        </v-row>
        <v-row justify='center'>
          <v-col class='py-0'>
            <v-toolbar flat color='#E0E0E0' max-width='100%'>
              <v-toolbar-title class='font-weight-bold'>
                {{ recipes.recipe_name }}
              </v-toolbar-title>
            </v-toolbar>
          </v-col>
        </v-row>
        <v-row>
          <v-col class='py-0'>
            <v-toolbar outlined flat max-width='100%' height='250'>
              <div>
                <v-img :src='recipes.recipe_image_url' max-width='300' max-height='200'></v-img>
              </div>
              <v-col class='mx-10'>
                <v-row class='my-2'>
                  <h5 class="text-decoration-underline">
                    <v-icon class="mr-1">mdi-clock</v-icon>
                    所要時間
                  </h5>
                </v-row>
                {{ recipes.recipei_indication }}
                <v-row class='my-2'>
                  <h5 class="text-decoration-underline">
                    <v-icon class="mr-1">mdi-cash-multiple</v-icon>
                    コスト
                  </h5>
                </v-row>
                {{ recipes.recipe_cost }}
                <v-row class='my-2'>
                  <h5 class="text-decoration-underline">
                    <v-icon class="mr-1">mdi-account</v-icon>
                    量
                  </h5>
                </v-row>
                {{ recipes.serving_size }}人分
              </v-col>
            </v-toolbar>
          </v-col>
        </v-row>

        <!-- 材料リスト -->
        <v-row class=''>
          <v-col>
            <div class="text-h6">材料({{ recipes.serving_size }}人分)</div>
            <v-card tile class='mx-auto' outlined>
              <v-list disabled>
                <v-list-item-group>
                  <!-- ↓ここに材料のデータを入れる -->
                  <v-list-item 
                    v-for="(item, i) in recipes.ingredients" 
                    :key="i" 
                    :class="{ 'alternate-bg': i % 2 === 0, 'added-item': addedItems_key.includes(item.name) }"
                    class="non-clickable"
                  >
                    <v-list-item-content>
                      <v-list-item-title>{{ item.name }}</v-list-item-title>
                    </v-list-item-content>
                    <v-list-item-content>
                      <v-list-item-title v-if="item.amount == 0">{{ item.unit }}
                      </v-list-item-title>
                      <v-list-item-title v-else>{{ String(item.amount) }}{{ item.unit }}
                      </v-list-item-title>
                    </v-list-item-content>
                    <v-spacer></v-spacer>
                    <v-list-item-content class="clickable-button" v-if="!addedItems_wishlist.includes(item.name)&&!addedItems_key.includes(item.name)">
                      <v-btn outlined rounded @click.stop="to_list(recipes.id, recipes.recipe_name, item)">
                        買い物リストに追加</v-btn>
                    </v-list-item-content>
                    <v-list-item-content v-else>
                        <v-btn outlined rounded :style="{ visibility: !addedItems_key.includes(item.name) ? 'visible' : 'hidden' }">
                          買い物リストに追加済み</v-btn>
                    </v-list-item-content>
                  </v-list-item>
                </v-list-item-group>
              </v-list>
            </v-card>
          </v-col>
        </v-row>

        <!-- 料理手順 -->
        <v-row class=''>
          <v-col>
            <div class="text-h6">作り方</div>
            <v-card tile class='mx-auto' outlined>
              <v-list disabled>
                <v-list-item-group color="green">
                  <!-- ↓ここにレシピの手順のデータを入れる -->
                  <v-list-item v-for="(item, i) in recipes.recipe_processes" :key="i">
                    <v-list-item-icon>
                      <v-chip color="orange" text-color="white" label>
                        {{ i + 1 }}
                      </v-chip></v-list-item-icon>
                    <v-list-item-content>
                      <v-list-item-title class="wrap-text">
                        <span>{{ item }}</span>
                      </v-list-item-title>
                    </v-list-item-content>

                  </v-list-item>
                </v-list-item-group>
              </v-list>
            </v-card>
          </v-col>
        </v-row>

      </v-container>
    </v-app>
  </v-main>
</template>

<script>
import axios from 'axios';

export default {
  data: () => ({
    recipes:
    {
      id: 0,
      recipe_rank: 0,
      recipe_name: "",
      recipe_image_url: "",
      recipe_cost: "",
      recipei_indication: "",
      category_id: "",
      category_name: "",
      serving_size: 0,
      ingredients: [],
      recipe_processes: [],
    },
    addedItems_key: [],
    addedItems_wishlist: [],
  }),
  created() {
    this.set_data();
  },
  computed: {
    fromSearchPage() {
      // ここで遷移元ページを判定
      return this.$store.state.fromSearchPage;
    }
  },
  methods: {
    async set_data() {
      const recipeId = parseInt(this.$route.query.id, 10);
      const data = this.$store.state.responseData;
      this.addedItems_key = [];
      this.addedItems_wishlist = [];

      if (data) {
        this.requestData = data.request_data || {};
        this.recipes = data.recipes || [];
      }

      this.recipes = this.recipes.find(recipe => recipe.id === recipeId);

      // Wishlistのデータを取得
      const wishlistData = await this.getWishlist();

      if (this.requestData && this.recipes && this.recipes.ingredients) {
        this.recipes.ingredients.forEach(ingredient => {
          // requestDataのconditionsをイテレートして部分一致検索を行う
          this.requestData.conditions.forEach(condition => {
            if (condition.name && ingredient.name && ingredient.name.includes(condition.name)) {
              // addedItems_keyにすでにそのnameが存在しないか確認
              if (!this.addedItems_key.includes(ingredient.name)) {
                this.addedItems_key.push(ingredient.name); // 部分一致が見つかった場合、addedItems_keyに追加
              }
            }
          });

          // Wishlistとingredient.nameが一致するものがあれば、addedItems_wishlistに追加
          wishlistData.wishlist.forEach(wishlistItem => {
            if (wishlistItem.recipeId === recipeId && ingredient.name === wishlistItem.name) {
              if (!this.addedItems_wishlist.includes(ingredient.name)) {
                this.addedItems_wishlist.push(ingredient.name);
              }
            }
          });
        });
      }
    },
    async getWishlist() {
      let wishlistData = null;
      try {
        const response = await axios.get('/wishlist');
        wishlistData = response.data;
      } catch (error) {
        console.error('Failed to fetch wishlist:', error);
      }
      return wishlistData;
    },
    go_back() {
      this.$router.push('/search');
    },
    async to_list(recipe_id, recipe_name, ingredient) {
      const payload = {
        name: ingredient.name,
        amount: ingredient.amount,
        unit: ingredient.unit,
        recipeTitle: recipe_name,
        recipeId: recipe_id
      };
      try {
        // POSTリクエストを送信
        const response = await this.$axios.post('/wishlist', payload);
        
        // アイテムが追加されたとしてマーク
        this.addedItems_wishlist.push(ingredient.name);
      } catch (error) {
        alert(response.data.message);
        console.error("An error occurred:", error);
      }
      // this.$router.push('/wishlist');
    },
  },
};
</script>

<style>
.wrap-text {
  word-break: break-all;
  white-space: normal;
}
.alternate-bg {
  background-color: rgb(224, 224, 224);
}
.non-clickable {
  pointer-events: none;
}

.clickable-button {
  pointer-events: auto;
}
.added-item {
  background-color: orange;
}
</style>
