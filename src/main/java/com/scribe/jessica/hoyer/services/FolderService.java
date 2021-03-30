package com.scribe.jessica.hoyer.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scribe.jessica.hoyer.models.Folder;
import com.scribe.jessica.hoyer.repositories.FolderRepository;

@Service
public class FolderService {
	private FolderRepository folderRepository;
	
	@Autowired
	public FolderService(FolderRepository folderRepository) {
		this.folderRepository = folderRepository;
	}
	
	public void saveFolder(Folder folder) {
		folderRepository.save(folder);
	}

}