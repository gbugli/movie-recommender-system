# -*- coding: utf-8 -*-
from . import helpers

def napoliSplit(dirstring, small, column_name, upper_lim = 0.9, lower_lim = 0.8):
    # TODO you can do error checking for prop limits here if needed, i.e if lower greater than upper, is valid, etc
    rdd, verified_column_name = helpers.readRDD(dirstring, small, column_name)

    # TODO for referenc for now
    print('Printing schema')
    rdd.printSchema()
   
   # TODO implement for others?
    if verified_column_name == 'ratings':
            return helpers.ratings_split(rdd, upper_lim, lower_lim)
      

# https://docs.python-guide.org/writing/structure/
