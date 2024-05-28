# avo-test
Test Avo install

This project reproduces the issue described in: https://github.com/avo-hq/avo/issues/2782

To see the issue:
1. Go into AVO
2. View the People resource
3. Note that the ID and the View links go to the child resource for anyone but John Doe (who's a Person, the rest are other MalePerson or FemalePerson)
4. View the show page for John Doe
5. Note that the ID link for the children goes to the Person resource, but the view link goes to the child resource