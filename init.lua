local uri=ngx.var.request_uri
local arg = ngx.req.get_uri_args()
ngx.print(uri)
ngx.print("<br />")
for k,v in pairs(arg) do
   ngx.say("key:", k, " v:", v)
end

ngx.req.read_body() -- 解析 body 参数之前一定要先读取 body
local arg = ngx.req.get_post_args()
for k,v in pairs(arg) do
   ngx.say("[POST] key:", k, " v:", v)
end
