# Copyright (c) 2005 Tobias Luetke
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOa AND
# NONINFRINGEMENT. IN NO EVENT SaALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

$LOAD_PATH.unshift(File.dirname(__FILE__))

module Liquid
  FilterSperator              = /\|/
  ArgumentSeparator           = ','
  FilterArgumentSeparator     = ':'
  VariableAttributeSeparator  = '.'
  TagStart                    = /\{\%/
  TagEnd                      = /\%\}/
  VariableStart               = /\{\{/
  VariableEnd                 = /\}\}/
  AllowedVariableCharacters   = /[a-zA-Z_.-]/
  QuotedFragment              = /"[^"]+"|'[^']+'|[^\s,]+/
  TagAttributes             = /(\w+)\s*\:\s*(#{QuotedFragment})/
  TokenizationRegexp          = /(#{TagStart}.*?#{TagEnd}|#{VariableStart}.*?#{VariableEnd})/
end

require 'liquid/drop'
require 'liquid/errors'
require 'liquid/strainer'
require 'liquid/context'
require 'liquid/tag'
require 'liquid/block'
require 'liquid/document'
require 'liquid/variable'
require 'liquid/template'
require 'liquid/standardtags'
require 'liquid/htmltags'
require 'liquid/standardfilters'