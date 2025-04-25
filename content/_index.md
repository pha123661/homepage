---
# Leave the homepage title empty to use the site title
title: ''
date: 2024-05-18
type: landing

sections:
  - block: about.biography
    id: about
    content:
      title: About Me
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
  # - block: skills
  #   content:
  #     title: Skills
  #     text: ''
  #     # Choose a user to display skills from (a folder name within `content/authors/`)
  #     username: admin
  #   design:
  #     columns: '1'
  - block: experience
    id: experience
    content:
      title: Experience
      # Date format for experience
      date_format: Jan 2006
      # Experiences.
      #   Add/remove as many `experience` items below as you like.
      #   Required fields are `title`, `company`, and `date_start`.
      #   Leave `date_end` empty if it's your current employer.
      #   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
      items:
        - title: Machine Learning Algorithm Engineer
          company: Google
          company_url: 'https://about.google/'
          company_logo: org-google
          # location: Taipei
          date_start: '2025-05-01'
          date_end: ''
          description: |
                  - Developed Generative AI for image editing with text prompts.
                  - Designed efficient generative model architecture for 20x faster inference.

        - title: Machine Learning Intern
          company: Google
          company_url: 'https://about.google/'
          company_logo: org-google
          # location: Taipei
          date_start: '2024-06-01'
          date_end: '2024-09-01'
          description: Developed Generative AI for image editing using text prompts and designed an efficient generative model architecture achieving 25x faster inference.


        - title: Software Engineer Intern
          company: Intel
          company_url: 'https://www.intel.com/'
          company_logo: org-intel
          # location: Taipei
          date_start: '2023-07-01'
          date_end: '2024-05-01'
          description: 'Contributed to the internal LLM copilot for unit-test generation, resulting in a 20% improvement in code coverage.'

        - title: LLM Engineer, TAIDE LLM
          company: NARLabs 國家實驗研究院
          company_url: 'https://www.narlabs.org.tw/'
          company_logo: org-narlabs
          # location: Taipei
          date_start: '2023-03-01'
          date_end: '2023-09-01'
          description: 'Developed the [TAIDE LLM](project/taide/) for Taiwanese culture. Involved in preference data generation, pre-training, instruction tuning, and safety alignment.'

        - title: AI Engineering Intern
          company: Tomofun
          company_url: 'https://furbo.com/tw/'
          company_logo: org-tomofun
          # location: Taipei
          date_start: '2023-03-01'
          date_end: '2023-06-01'
          description: "Focused on the efficient tuning of a vision-language model for pet monitoring, improving the model's out-of-distribution factuality by 15%."

        - title: Research Assistant
          company: TSMC and ACM Lab, NCTU
          company_url: 'http://acm.cs.nycu.edu.tw/'
          company_logo: org-tsmc
          # location: Hsinchu
          date_start: '2021-01-01'
          date_end: '2022-01-01'
          description: Engaged in efficient meta-learning ([AI Learning and Digital Twin in HVAC Control](project/tsmc-hvac/)) for sensor forecasting in HVAC control, significantly reducing training data requirements by 97.5%.

    design:
      columns: '2'
  - block: accomplishments
    content:
      # Note: `&shy;` is used to add a 'soft' hyphen in a long heading.
      title: 'Honors'
      subtitle:
      # Date format: https://docs.hugoblox.com/customization/#date-format
      date_format: Jan 2006
      # Accomplishments.
      #   Add/remove as many `item` blocks below as you like.
      #   `title`, `organization`, and `date_start` are the required parameters.
      #   Leave other parameters empty if not required.
      #   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
      items:
        - date_end: ''
          date_start: '2024-06-30'
          description: 'Honored for exceptional academic performance, ranking among the top 1% of students.'
          icon: phi_tau_phi
          organization: The Phi Tau Phi Scholastic Honor Society
          organization_url: http://www.phitauphi.org.tw/
          title: Honorary member of the Phi Tau Phi Scholastic Honor Society
          url: ''
        - date_end: ''
          date_start: '2022-08-01'
          description: Awarded for outstanding performance in the [AI Learning and Digital Twin in HVAC Control](project/tsmc-hvac/) project.
          icon: org-nctu
          organization: NCTU & The Zhu-Ming Academic Foundation
          organization_url: https://www.nycu.edu.tw/
          title: The Yin Zhi Tong Memorial Scholarship
          url: ''
    design:
      columns: '2'

  # - block: collection
  #   id: posts
  #   content:
  #     title: Recent Posts
  #     subtitle: ''
  #     text: ''
  #     # Choose how many pages you would like to display (0 = all pages)
  #     count: 5
  #     # Filter on criteria
  #     filters:
  #       folders:
  #         - post
  #       author: ""
  #       category: ""
  #       tag: ""
  #       exclude_featured: false
  #       exclude_future: false
  #       exclude_past: false
  #       publication_type: ""
  #     # Choose how many pages you would like to offset by
  #     offset: 0
  #     # Page order: descending (desc) or ascending (asc) date.
  #     order: desc
  #   design:
  #     # Choose a layout view
  #     view: compact
  #     columns: '2'

  - block: collection
    id: publications
    content:
      title: Publications
      filters:
        folders:
          - publication
        exclude_featured: false
    design:
      columns: '2'
      view: citation

  - block: portfolio
    id: projects
    content:
      title: Projects
      filters:
        folders:
          - project
      # Default filter index (e.g. 0 corresponds to the first `filter_button` instance below).
      default_button_index: 0
      # Filter toolbar (optional).
      # Add or remove as many filters (`filter_button` instances) as you like.
      # To show all items, set `tag` to "*".
      # To filter by a specific tag, set `tag` to an existing tag name.
      # To remove the toolbar, delete the entire `filter_button` block.
      buttons:
        - name: All
          tag: '*'
        - name: Large Language Model
          tag: LLM
        - name: "Competition"
          tag: Competition
    design:
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: '2'
      view: masonry
      flip_alt_rows: false

  - block: markdown
    id: gallery
    content:
      title: Gallery
      subtitle: ''
      text: |-
        {{< gallery album="live" >}}
    design:
      columns: '1'
  # - block: collection
  #   id: featured
  #   content:
  #     title: Featured Publications
  #     filters:
  #       folders:
  #         - publication
  #       featured_only: true
  #   design:
  #     columns: '2'
  #     view: card
  # - block: collection
  #   id: talks
  #   content:
  #     title: Recent & Upcoming Talks
  #     filters:
  #       folders:
  #         - event
  #   design:
  #     columns: '2'
  #     view: compact
  # - block: tag_cloud
  #   content:
  #     title: Popular Topics
  #   design:
  #     columns: '2'
  # - block: contact
  #   id: contact
  #   content:
  #     title: Contact
  #     subtitle:
  #     text: Feel free to contact me 📨📨📨
  #     # Contact (add or remove contact options as necessary)
  #     email: swli-iagents.9vj9n@slmail.me
  #     # appointment_url: 'https://calendly.com'
  #     # address:
  #     #   street: 450 Serra Mall
  #     #   city: Stanford
  #     #   region: CA
  #     #   postcode: '94305'
  #     #   country: United States
  #     #   country_code: US
  #     # directions: Enter Building 1 and take the stairs to Office 200 on Floor 2
  #     # office_hours:
  #     #   - 'Monday 10:00 to 13:00'
  #     #   - 'Wednesday 09:00 to 10:00'
  #     # # Choose a map provider in `params.yaml` to show a map from these coordinates
  #     # coordinates:
  #     #   latitude: '37.4275'
  #     #   longitude: '-122.1697'
  #     # contact_links:
  #     #   - icon: twitter
  #     #     icon_pack: fab
  #     #     name: DM Me
  #     #     link: 'https://twitter.com/Twitter'
  #     #   - icon: skype
  #     #     icon_pack: fab
  #     #     name: Skype Me
  #     #     link: 'skype:echo123?call'
  #     #   - icon: video
  #     #     icon_pack: fas
  #     #     name: Zoom Me
  #     #     link: 'https://zoom.com'
  #     # Automatically link email and phone or display as text?
  #     autolink: true
  #     # Email form provider
  #     # form:
  #     #   provider: netlify
  #     #   # formspree:
  #     #   #   id:
  #     #   netlify:
  #     #     captcha: true
  #   design:
  #     columns: '2'
---
