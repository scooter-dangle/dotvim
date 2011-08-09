
    let s:lastcount=0 
    function s:LambdaMacroExtension() 
        if !s:lastcount 
            let s:lastcount=v:count1 
            return 'qv' 
        else 
            try 
                return 'q'.(((s:lastcount-1)>0)?((s:lastcount-1).'@v'):('')) 
            finally 
                let s:lastcount=0 
            endtry 
        endif 
    endfunction 
    nnoremap <expr> Q <SID>LambdaMacroExtension() 
