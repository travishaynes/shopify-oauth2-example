Shopify OAuth2 Example
======================

This is an example of how to use OAuth2 authentication in a Shopify app.


Instructions
============

1. Create a new Shopify app from your [Shopify Partner](https://app.shopify.com/services/partners/) dashboard.
2. Copy the `api key` and `shared secret` for later.
3. Run the following commands in a terminal:

    $ git clone git://github.com/travishaynes/shopify-oauth2-example.git
    $ cd shopify-oauth2-example
    $ bundle
    $ rake db:migrate
    $ export SHOPIFY_API_KEY=[paste your app's shopify api key here]
    $ export SHOPIFY_SHARED_SECRET=[paste your app's shared secret here]
    $ rails s

4. Point your browser to [localhost:3000](http://localhost:3000), and sign in
with a test app.
