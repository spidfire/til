#!/usr/bin/env ruby

File.open("README.md", 'w') { |file|

    file.write "### til\n"
    file.write ":memo: Today I Learned\n"

    cur_dir = ""
    Dir.glob("*/*.md").sort.each { |f|
        dir = f.split("/")[0]
        if cur_dir != dir
            cur_dir = dir
            file.write "\n### #{dir.capitalize}\n\n"
        end
        title = dir.split(".")[0]
        File.open(f).each{ |line|
            if a = line.match(/\s*?#+(.*)/)
                title = a.captures[0]
                break
            end
        }
        file.write " - [#{title.strip.capitalize}](#{f})\n"

    }
}


date = Time.new.strftime("%Y-%m-%d %H:%M:%S")
`git add -A && git commit -m '#{date}' && git push`
