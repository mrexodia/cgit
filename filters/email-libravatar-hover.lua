local crypto = require("crypto")

function filter_open(email, page)
        buffer = ""
        hexdigest = crypto.digest("md5", email:sub(2, -2):lower())
end

function filter_close()
        html("<span class='libravatar'><img class='inline' src='http://cdn.libravatar.org/avatar/" .. hexdigest .. "?s=13&amp;d=retro' /><img class='onhover' src='http://cdn.libravatar.org/avatar/" .. hexdigest .. "?s=128&amp;d=retro' /></span>" .. buffer)
        return 0
end

function filter_write(str)
        buffer = buffer .. str
end
