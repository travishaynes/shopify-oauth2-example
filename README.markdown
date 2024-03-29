Shopify OAuth2 Example
======================

This is an example of how to use OAuth2 authentication in a Shopify app.


Instructions
============

First create a new Shopify app from your
[Shopify Partner](https://app.shopify.com/services/partners/) dashboard, and
copy the `api key` and `shared secret`.

Then run the following commands in a terminal:

    $ git clone git://github.com/travishaynes/shopify-oauth2-example.git
    $ cd shopify-oauth2-example
    $ bundle
    $ rake db:migrate
    $ export SHOPIFY_API_KEY=[paste your app's shopify api key here]
    $ export SHOPIFY_SHARED_SECRET=[paste your app's shared secret here]
    $ rails s

Then point your browser to [localhost:3000](http://localhost:3000), and sign in
with a test shop.
