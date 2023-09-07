<template>
  <v-main>
    <v-app>
      <v-container>
        <v-row class='my-1'>
          <v-col class='d-flex align-left'>
            <v-btn elevation='2' @click='go_back()'>
              <v-icon right dark class='mx-0'> mdi-menu-left-outline </v-icon>
              検索画面結果に戻る
            </v-btn>
          </v-col>
        </v-row>
        <v-row justify='center'>
          <v-col class='py-0'>
            <v-toolbar flat color='#E0E0E0' max-width='100%'>
              <v-toolbar-title class='font-weight-bold'>
                {{ this.recipes.recipeTitle }}
              </v-toolbar-title>
            </v-toolbar>
          </v-col>
        </v-row>
        <v-row>
          <v-col class='py-0'>
            <v-toolbar outlined flat max-width='100%' height='250'>
              <div>
                <v-img :src='this.recipes.foodImageUrl' max-width='300' max-height='200'></v-img>
              </div>
              <v-col class='mx-10'>
                <v-row class='my-2'>
                  <h5 class="text-decoration-underline">
                    <v-icon class="mr-1">mdi-clock</v-icon>
                    所要時間
                  </h5>
                </v-row>
                {{ this.recipes.recipeIndication }}
                <v-row class='my-2'>
                  <h5 class="text-decoration-underline">
                    <v-icon class="mr-1">mdi-clock</v-icon>
                    コスト
                  </h5>
                </v-row>
                {{ this.recipes.recipeCost }}
                <v-row class='my-2'>
                  <h5 class="text-decoration-underline">
                    <v-icon class="mr-1">mdi-clock</v-icon>
                    量
                  </h5>
                </v-row>
                {{ this.recipes.serving_size }}人分
              </v-col>
            </v-toolbar>
          </v-col>
        </v-row>

        <v-row class=''>
          <v-col>
            <div class="text-h6">材料({{ this.recipes.serving_size }}人分)</div>
            <v-card tile class='mx-auto' outlined>
              <v-list>
                <v-list-item-group v-model="selectedItems" color="gray" multiple>
                  <v-list-item v-for="(item, i) in recipes.ingredients" :key="i">
                    <v-list-item-content>
                      <v-list-item-title v-text="item.name"></v-list-item-title>
                    </v-list-item-content>
                    <v-list-item-content>
                      <v-list-item-title v-text="item.quantity+item.unit"></v-list-item-title>
                    </v-list-item-content>
                    <v-spacer></v-spacer>
                    <v-list-item-content>
                      <v-btn outlined rounded @click="to_list()">
                        買い物リストに追加</v-btn>
                    </v-list-item-content>
                  </v-list-item>
                </v-list-item-group>
              </v-list>
            </v-card>
          </v-col>
        </v-row>

        <v-row class=''>
          <v-col>
            <div class="text-h6">作り方</div>
            <v-card tile class='mx-auto' outlined>
              <v-list disabled>
                <v-list-item-group v-model="selectedItem" color="green">
                  <v-list-item v-for="(item, i) in recipes.recipe" :key="i">
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
export default {
  data: () => ({
    recipes:
    {
      recipeTitle: '子供が喜ぶウインナーとジャガイモのチーズ焼き',
      recipeUrl: 'https://recipe.rakuten.co.jp/recipe/1900012525/',
      foodImageUrl: 'https://image.space.rakuten.co.jp/d/strg/ctrl/3/79b725a01f97749ed1b1fe6915b1aa673beb2e61.18.2.3.2.jpg',
      recipeMaterial: [
        'ウインナー',
        'ジャガイモ',
        '玉ねぎ',
        '塩',
        'こしょう',
        'チーズ',
      ],
      recipeCost: '100円以下',
      recipeIndication: '約10分',
      categoryId: '10-66-50',
      categoryName: 'ソーセージ・ウインナー',
      serving_size: '4',
      ingredients: [
        {
          name: 'ウインナー',
          quantity: '5',
          unit: '本',
        },
        {
          name: 'ジャガイモ',
          quantity: '2',
          unit: '中',
        },
        {
          name: '玉ねぎ',
          quantity: '0',
          unit: '中半分',
        },
        {
          name: '塩',
          quantity: '0',
          unit: 'ひとつまみ',
        },
      ],
      recipe: ['ジャガイモは5mm角の3cmぐらいに切り、玉ねぎはうすぎり、ウインナーはジャガイモと大体同じ大きさに切る。', 'じゃがいもをレンジで柔らかくする。', 'ウインナーと玉ねぎを最初にフライパンに入れ中火で炒め、その後ジャガイモをいれて水分をとばし、塩こしょうをする。', '耐熱皿かアルミホイルにのせて、その上にチーズをのせる。', 'トースター、グリルなどで５分ほど焼き、チーズがとけて焼き目がついたらできあがり♡'],
    },
    items: [
      { text: 'Real-Time', icon: 'mdi-clock' },
      { text: 'Audience', icon: 'mdi-account' },
      { text: 'Conversions', icon: 'mdi-flag' },
    ],
    selectedItems: [],
    isListDisabled: true, // v-listを無効にするかどうかを管理
  }),
  created() {
    this.set_selectedItems();
  },
  methods: {
    go_back() {
      //   this.$router.push('/searcher');
    },
    to_list() {
      this.$router.push('/');
    },
    set_selectedItems() {
      for (let i = 1; i <= 8; i += 2) {
        this.selectedItems.push(i); // 8は材料の数に変更したい
      }
    },
  },
};
</script>

<style>
.wrap-text {
  word-break: break-all;
  white-space: normal;
}
</style>
