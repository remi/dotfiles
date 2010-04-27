"  stampbackup.vim: Really simple file backups
"  Last Change: 2010-03-23T11:08:32-0400
"  Maintainer:  Rémi Prévost <remi@exomel.com>
"  Version:     0.1
function! StampBackup()
	if expand('%:t') != ""
		let bup = globpath(&backupdir, expand('%:t') . &bex)
		if bup != ""
			let stamp = ".".strftime("%y.%m.%d_%H.%M.%S")
			if expand('%:t') =~# '\M.'
				let stamped = substitute(bup, '\M.\(\[^.]\*\)' . &bex . '$', stamp . '.' . '\1', '')
			else
				let stamped = substitute(bup, '\M' . &bex. '$', stamp, '')
			endif
			if rename(bup, stamped)
				echoerr "failed rename of backup " . bup . " to " .  stamped
			endif
		endif
	endif
endfunction

augroup StampBackup
    au! BufWritePost,FileWritePost * call StampBackup()
augroup END
