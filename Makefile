
help:
	@echo ""
	@echo "Make Targets:"
	@echo "  make install   - Install the Tool"
	@echo "  make uninstall - Uninstall the Tool"
	@echo "  make update    - Update current installed Tool to latest version"
	@echo ""

install:
	@sudo cp -a ./src/elfcheck /usr/local/bin/elfcheck
	@sudo chmod +x /usr/local/bin/elfcheck
	@echo ""
	@echo "Install Completed"
	@echo ""

uninstall:
	@sudo rm -f /usr/local/bin/elfcheck
	@echo ""
	@echo "Uninstall Completed"
	@echo ""

update: uninstall
	@git checkout main && git pull
	@sudo cp -a ./src/elfcheck /usr/local/bin/elfcheck
	@sudo chmod +x /usr/local/bin/elfcheck
	@echo ""
	@echo "Update Completed"
	@echo ""
