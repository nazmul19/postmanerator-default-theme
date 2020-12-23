<div class="scrollspy">
    <ul id="main-menu" data-spy="affix" class="nav">
        {{ with $structures := .Structures }}
        <li>
            <a href="#doc-api-structures">API structures</a>
            <ul>
                {{ range $structures }}
                <li>
                    <a href="#struct-{{ .Name }}">{{ .Name }}</a>
                </li>
                {{ end }}
            </ul>
        </li>
        {{ end }}
       
        {{ range .Requests }}
        <li>
            <a href="#request-{{ slugify .Name }}"><span class="req-{{ .Method }} text-lg">{{ .Method }}</span> {{ .Name }}</a>
        </li>
        {{ end }}
        {{ range .Folders }}
        {{ $folder := . }}
        <li>
            <a href="#folder-{{ slugify $folder.Name }}">{{ $folder.Name }}</a>
            <ul>
                {{ range $folder.Requests }}
                <li>
                    <a href="#request-{{ slugify $folder.Name }}-{{ slugify .Name }}"><span class="req-{{ .Method }} text-lg">{{ .Method }}</span> {{ .Name }}</a>
                </li>
                {{ end }}
            </ul>
        </li>
        {{ end }}
    </ul>
</div>
