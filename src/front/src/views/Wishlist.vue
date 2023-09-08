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

        <v-row class="my-1">
          <v-col>
            <v-card tile class='mx-auto' outlined>
              <v-list disabled>
                <v-list-item-group>
                  <v-list-item 
                    v-for="(item, i) in wishlist" 
                    :key="i" 
                    :class="{ 'alternate-bg': i % 2 === 0 }"
                    class="non-clickable"
                  >
                    <v-list-item-action start>
                      <v-checkbox class="clickable"></v-checkbox>
                    </v-list-item-action>
                    <v-list-item-content class="name-width">
                      <v-list-item-title>{{ item.name }}</v-list-item-title>
                    </v-list-item-content>
                    <v-list-item-content class="amount-width">
                      <v-list-item-title v-if="item.amount == 0">{{ item.unit }}</v-list-item-title>
                      <v-list-item-title v-else>{{ String(item.amount) }}{{ item.unit }}</v-list-item-title>
                    </v-list-item-content>
                    <v-spacer></v-spacer>
                    <v-list-item-content class="title-width">
                      <v-list-item-title @click.stop="to_recipe(item)" class="custom-color" style="text-decoration: underline;">{{ item.recipeTitle }}</v-list-item-title>
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
  import axios from 'axios';

  export default {
    data () {
      return {
        wishlist: [],
      }
    },
    created() {
      this.set_data();
    },
    methods: {
      async set_data() {
        const wishlistData = await this.getWishlist();

        this.wishlist = wishlistData.wishlist;

        console.log(this.wishlist)
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
        this.$router.push('/');
      },
      async to_recipe(item) {
        // recipeIdを使用して遷移
        const payload = {
          conditions: [
            {
              id: 1,
              name: "",
              amount: parseInt(item.amount, 10),
              unit: item.unit
            }
          ],
          quantity: 1
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
            // this.$router.push('/searcher');
            this.$store.commit('setFromSearchPage', false);
            this.$router.push({ path: '/recipe', query: { id: item.recipeId } });
        })
        .catch(error => {
            console.error('Error:', error);
        });
        
      },
    },
  }
  </script>
  <style>
  .name-width {
    flex: 1;
  }
  
  .amount-width {
    flex: 1;
  }
  
  .title-width {
    flex: 3;
    pointer-events: auto;
  }
  .alternate-bg {
    background-color: rgb(224, 224, 224);
  }
  .non-clickable {
    pointer-events: none;
  }
  
  .clickable {
    pointer-events: auto;
  }
  .custom-color {
    color: #3377ff;
  }
  </style>