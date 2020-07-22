Collection of various types of sensitive corporate data.

Urls scraped using Octoparse from parsing Google PDF search results.

Downloads are done via aria:

`aria2c -d $doc_type -i $urls_file -t 5 -c --check-certificate false --connect-timeout 1 -j 10`

PDF is then parsed using pdftotext:

`ls -1 | grep -v ".txt" | xargs -t -L1 -I {} pdftotext -layout "{}`

Parsed text file larger than 100K and smaller than 2K are pruned.


Content categories:

- [x] health insurance claims
- [x] medical consent forms
- [x] purchase order forms
- [x] request for proposals
- [x] direct deposit forms
- [x] loan applications
- [x] credit card authorization
- [ ] expense reimbursement forms
- [ ] insurance verification forms
- [x] hsa fsa forms
- [x] student info requests
- [ ] withholding exemption certificate
