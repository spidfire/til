#!/usr/bin/env ruby

require 'date'

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

    file.write "### Logs of days"
    # git log --after="2016-08-05 00:00" --before="2016-08-05 23:59" --name-status | grep "^A\b"
    current_time = Date.parse(Time.now.to_s)
    (Date.new(2016, 07, 01).upto(current_time)).each do |date|
        day = sprintf '%d-%02d-%02d', date.year, date.month, date.day
        file.write "# #{day}\n"
        # spawn(*args, STDERR=>:out)
        `git log --after="#{day} 00:00" --before="#{day} 23:59" --name-status `.each_line { |line|
            if line.match(/^[AM]\b/i)
                file.write line
            end
         }

        file.write "\n"
    end
}


date = Time.new.strftime("%Y-%m-%d %H:%M:%S")
`git add -A && git commit -m '#{date}' && git push`
