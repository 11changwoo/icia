package com.project.util;

import org.springframework.ui.Model;

public interface Command {
	public void execute(Model model) throws Exception;
}

