#!/bin/env ruby
# encoding: utf-8

require 'everypolitician'
require 'wikidata/fetcher'

query = 'SELECT DISTINCT ?item { ?item p:P39/ps:P39 wd:Q52802973 }'
ids = EveryPolitician::Wikidata.sparql(query)

EveryPolitician::Wikidata.scrape_wikidata(ids: ids)
