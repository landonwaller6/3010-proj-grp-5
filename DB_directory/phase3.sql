--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: committeenames; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.committeenames (
    id integer,
    committee_name character varying(100),
    remarks character varying(100)
);


ALTER TABLE public.committeenames OWNER TO postgres;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    prefix character varying(10),
    number integer,
    title character varying(150),
    gu character varying(10),
    ch integer,
    frequency integer,
    active character varying(10),
    description character varying(1000),
    remarks character varying(100)
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- Name: csfaculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.csfaculty (
    id integer,
    honorific character varying(10),
    first character varying(50),
    mi character varying(1),
    last character varying(50),
    email character varying(100),
    phone character varying(25),
    office character varying(50),
    research_interest character varying(500),
    rank character varying(50),
    remarks character varying(100),
    currentlyemployed character varying(10)
);


ALTER TABLE public.csfaculty OWNER TO postgres;

--
-- Name: deptnum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deptnum (
    prefix character varying(10),
    number integer,
    coursedirectorid integer,
    remarks character varying(100)
);


ALTER TABLE public.deptnum OWNER TO postgres;

--
-- Name: faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faculty (
    faculty_id integer,
    committee_id integer,
    start_date character varying(50),
    end_date character varying(50),
    remarks character varying(100)
);


ALTER TABLE public.faculty OWNER TO postgres;

--
-- Name: fte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fte (
    faculty character varying(100),
    year integer,
    semester character varying(10),
    fte real
);


ALTER TABLE public.fte OWNER TO postgres;

--
-- Data for Name: committeenames; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.committeenames (id, committee_name, remarks) FROM stdin;
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (prefix, number, title, gu, ch, frequency, active, description, remarks) FROM stdin;
CSCI	1000	Explorations in Computing	U	3	1	Yes	Central principles of problem-solving and programming on a computer in a high-level programming language. Testing programs by hand and on a computer. Common classes of algorithms and how to write them. 2 lecture and 2 lab hours per week	\N
CSCI	1003	Explorations in Computing Lab	U	0	1	Yes	2 lecture and 2 lab hours per week. C: CSCI 1000. Implementing and testing basic algorithms using a high-level programming language.	\N
CSCI	1010	Algorithmic Problem Solving	U	4	1	Yes	3 lecture and 2 lab hours per week. P: Appropriate score on math section of the SAT/ACT or MATH 1065 or CSCI 1000; C: CSCI 1011. Design of algorithms and their implementation as programs in a high-level programming language such as Java.	\N
CSCI	1011	Algorithmic Problem Solving Lab	U	0	1	 Yes	3 lecture and 2 lab hours per week. C: CSCI 1010. Design, implement, and test fundamental algorithms using a high-level programming language such as Java. 	\N
CSCI	2400	Discrete Structures I	U	3	1	Yes	P: MATH 1065. Application of basic concepts in discrete mathematics to solving problems in the computing discipline	\N
CSCI	2405	Discrete Structures II	U	3	1	 Yes	P: CSCI 2400. Continuation of CSCI 2400. Application of advanced concepts in discrete mathematics to solve computational problems	\N
CSCI	2410	Digital Logic Design	 U	3	1	Yes	P: ENGR 1014 or ENGR 1016 and ENGR 2050. Introduction to digital logic and digital electronics, including Boolean algebra, number systems, logic gates, data structures, and both combinational and sequential logical design and optimization.	\N
CSCI	2530	Algorithms and Data Structures	U	4	1	Yes	P: CSCI 1010; P/C: CSCI 2400. Computational problem solving using fundamental algorithms and physical data structures. Design and analysis of algorithms that operate on these data structures.	\N
CSCI	2540	Data Abstraction and Object-Oriented Data Structures	U	3	1	Yes	P: CSCI 2530; P/C: CSCI 2405. Data abstractions including stacks, queues, graphs, tables, sets and domain-specific data abstractions. Implementations of data abstractions in object-oriented style and principles of class design.	\N
CSCI	3000	Operating Systems	U	3	1	Yes	P: CSCI 2405, CSCI 2530. Operating system design and implementation. Process and memory management, and file systems. Operating system support for distributed systems.	\N
CSCI	3010	Computer Networks	U	3	1	Yes	P: CSCI 2530. Design and analysis of computer communication networks. Topics include application layer protocols, Internet protocols, network interfaces, local and wide area networks, wireless networks, bridging and routing.	\N
CSCI	3030	Software Engineering I	U	3	1	Yes	P: CSCI 2540. Software engineering principles, development methodologies and tools for developing large and complex software systems.	\N
CSCI	3200	Data Structures and Their Applications	U	3	1	Yes	Common data structures and how to use them in advanced problem solving.	\N
CSCI	3550	Computer Game Development I	U	3	1	Yes	P: CSCI 2530 or  CSCI 3200. A broad view of computer game development from an applied computer science point of view. Content creation and the concepts behind the development of story, character, environment, level design, user interface, and sound.	\N
CSCI	3584	Computational Linear Algebra	U	3	1	Yes	May not count toward MATH major or minor. P: Calculus course. Introduces vectors, matrices, and determinants. Special emphasis on application of linear algebra to solution of practical problems.	\N
CSCI	3650	Design and Analysis of Algorithms	U	3	1	Yes	P: CSCI 2530. Formal techniques to support the design and analysis of algorithms. Asymptotic complexity bounds, techniques of analysis, and algorithmic strategies.	\N
CSCI	3675	Principles of Programming Languages	U	3	1	Yes	P: CSCI 2540. Applied course in programming language constructs. Emphasis on run-time behavior of programs. Provides appropriate background for advanced-level courses involving formal and theoretical aspects of programming languages and compilation process.	\N
CSCI	3700	Database Management Systems	U	3	1	Yes	P: CSCI 2540. Relational database systems theory and database development. Topics include relational data model and integrity constraints specification, data modeling and relational schema design, normalization of relational schema, relational algebra, SQL, and database programming.	\N
CSCI	3800	Computer Graphics	U	3	1	Yes	P: CSCI 2540; MATH 3256 or MATH 3584. Computer graphics systems, hardware, interactive methods; line and curve drawing; two- and three-dimensional transformations; and perspective transformation.	\N
CSCI	4110	High Performance Computing	U	3	1	Yes	P: CSCI 3000, CSCI 3675. Software design and development targeting high performance computing architectures. Multi-core and many-core systems. MPI, OpenMP, MapReduce, CUDA, and OpenCL computing models.	\N
CSCI	4120	Machine Learning	U	3	1	Yes	P: CSCI 2540; MATH 2228 or MATH 2283. Machine learning and statistical pattern recognition algorithms and their application to data analytics, bioinformatics, speech recognition, natural language processing, robotic control, autonomous navigation, and text and web data processing.	\N
CSCI	4130	Information Retrieval	U	3	1	Yes	P: CSCI 2540; MATH 2228 or MATH 2283. Theory and algorithms for modeling and retrieving text. Text representation, IR models, query operations, retrieval evaluation, information extraction, text classification and clustering, enterprise and Web search, and recommender systems.	\N
CSCI	4140	Natural Language Processing	U	3	1	Yes	P: CSCI 2540; MATH 2228 or MATH 2283. Fundamental algorithms and computational models for core tasks in natural language processing. Word and sentence tokenization, parsing, information and meaning extraction, spelling correction, text summarization, question answering, and sentiment analysis	\N
CSCI	4150	Digital Image Processing	U	3	1	Yes	P: CSCI 2540; MATH 2228 or MATH 2283. Mathematical techniques and algorithms for image sampling, quantization, intensity transformations, spatial filtering, Fourier transforms, frequency domain filtering, restoration and reconstruction, morphological image processing, and segmentation.	\N
CSCI	4160	Cybersecurity: Theory and Practice	U	3	1	Yes	P: CSCI 3000, CSCI 3010. Computing systems security principles and models. Vulnerability assessment and prevention measures. Authentication and access control in distributed systems. Operating system, network, and database security	\N
CSCI	4170	Cloud Computing	U	3	1	Yes	P: CSCI 3000, CSCI 3010. Cloud computing as a cost effective platform for developing and deploying highly available and scalable applications. Theory, application frameworks, and tools of cloud computing	\N
CSCI	4180	Big Data Analytics	U	3	1	Yes	P: CSCI 3700. Hands-on introduction to very big data and the practical issues surrounding how the data is stored, processed, analyzed, and visualized. Work with cloud-based high performance computing systems, large data collections, and high velocity data streams.	\N
CSCI	4190	Cryptography and Information Security	U	3	1	Yes	P: CSCI 3650;  RP: CSCI 3584. Study of private key and public key cryptographic techniques that enable secret communication, message authentication and user identification.	\N
CSCI	4230	Software Engineering II	U	4	1	Yes	4 practicum and 2 lab hours per week. P: CSCI 3030, CSCI 3700; C: CSCI 4231. Application of technical and professional skills in solving a real-world problem in a team environment. Professional code of conduct, societal issues, copyrights and patents, intellectual capital, entrepreneurship, and transition from student to an industry professional in the context of software engineering.	\N
CSCI	4231	Software Engineering II Lab	U	0	1	Yes	4 practicum and 2 lab hours per week. C: CSCI 4230. Developing fully functional computing applications which solve practical problems.	\N
CSCI	4300	Systems Programming	U	3	1	Yes	P: CSCI 3200. Programming issues related to the functionality and general structure of operating systems, networking, security, and the general architecture of information systems are covered.	\N
CSCI	4520	Computer Architecture	U	3	1	Yes	P: CSCI major; CSCI 2410. Organization of basic elements of computer system, including processor, memory, control unit, and I/O units.	\N
CSCI	4540	Mobile Computing	U	3	1	Yes	P: CSCI 3010. Mobile computing and mobile application development. Mobile computing applications, technologies and wireless communication. Computing in environments with limited resources and low power, fault tolerance, and persistence. Mobile application frameworks and development environments. User interface design and evaluating user experience.	\N
CSCI	4550	Computer Game Development II	U	3	1	Yes	P: CSCI 3550. Animation development, multi-layer technologies, haptic displays, spatial issues in gaming and 3D immersion technology, terrain and special effects	\N
CSCI	4602	Automata Computability and Complexity	U	3	1	Yes	P: CSCI 2405, CSCI 2530. Fundamental concepts in automata theory and formal languages including grammars, finite automata, regular expressions, formal languages, pushdown automata, and Turing machines.	\N
CSCI	4627	Procedural Languages and Compilers	U	3	1	Yes	P: CSCI major; CSCI 2410, CSCI 3675. State of the art techniques for compiling procedural languages	\N
CSCI	4710	Web Applications	U	3	1	Yes	P: CSCI 3700.  Integration of several technologies including markup languages, scripting languages, network protocols, interactive graphics, event-driven programming, and databases in enabling Web applications development.	\N
CSCI	4900	Ethical and Professional Issues in Computer Science	U	3	1	Yes	To be taken by CSCI seniors in final semester.  P: CSCI major and senior standing. Professional, ethical, legal, security, and social issues and responsibilities related to the practice of computer science.	\N
CSCI	4905	Selected Topics in Computer Science	U	3	1	Yes	May be repeated with change of topic for maximum of 6 s.h. P: CSCI major; CSCI 2530 or CSCI 2540. Consideration of new or advanced topics in computer science.	\N
SENG	1000	Software Engineering Foundations and Practice	U	3	1	Yes	P: ACT Math score of 24 or SAT Math score of 560 or MATH 1065. Introduction to modern software engineering and computational problem-solving using object-oriented principles and a high-level programming language	\N
SENG	1010	Discrete Structures for Software Engineers I	U	3	1	Yes	P: ACT Math score of 24 or SAT Math score of 560 or MATH 1065. Fundamentals of discrete mathematics, including logic and elementary proofs, sequences, induction and recursion, sets and relations, and elementary number theory. Application of discrete mathematical concepts to solving software engineering problems	\N
SENG	1020	Data Structures for Software Engineers	U	3	1	Yes	P: SENG 1000. Introduction to data structures and their implementation. Computational problem-solving using data structures.	\N
SENG	1030	Discrete Structures for Software Engineers II	U	3	1	Yes	Continuation of SENG 1010. P: SENG 1010. Principles of discrete mathematics, including combinatorial proofs, discrete probability, recurrence relations and generating functions, graphs and trees, and analysis of algorithm efficiency. Application of discrete mathematical concepts to solving software engineering problems	\N
SENG	2000	Advanced Data Structures and Algorithms	U	3	1	Yes	P: SENG 1020. Design and analysis of algorithms using recursion, dynamic programming, and branch and bound. Solving computational problems using maps, hash tables, skip lists, and graph data structures	\N
SENG	2010	Requirements Specification and Analysis	U	3	1	Yes	P: SENG 1020. Methods and processes for eliciting, evaluating, managing, analyzing, documenting, and specifying software-intensive systems for achieving objectives, functions, qualities, and constraints.	\N
SENG	2020	Linear Algebra for Software Engineers	U	3	1	Yes	P: SENG 1030. Study of vectors, matrices, and determinants. Special emphasis on application of linear algebra to solving software engineering problems.	\N
SENG	3000	Software Architecture and Design	U	3	1	Yes	P: SENG 2010. Software architecture and design including iterative development process, modeling and analysis of software systems, object-oriented design, and design patterns	\N
SENG	3010	Software Construction	U	3	1	Yes	P: SENG 3000. Software construction tools and practice, including software development environments, object-oriented programming, software specification, automated testing, version control, and build management for software systems.	\N
SENG	3020	Software Verification and Validation	U	3	1	Yes	P: SENG 3000. Software quality attainment through software testing and other alternatives to quality assurance, including process improvement, inspection, fault tolerance, and reliability assurance	\N
SENG	3700	Database Design and Development	U	3	1	Yes	P: SENG 2000. Relational database systems theory and database development. Topics include relational data model and integrity constraints specification, data modeling and relational schema design, normalization of relational schema, relational algebra, SQL, and database programming.	\N
SENG	4500	Software Engineering Capstone Project I	U	3	1	Yes	P: SENG 3010, SENG 3700. Application of technical and professional skills in solving a real-world problem in a team environment. Topics include professional code of conduct, intellectual property, patents and copyrights, legal and ethical issues, entrepreneurship, and transition from student to software engineering professional.	\N
SENG	4510	Software Engineering Capstone Project II	U	3	1	Yes	Continuation of SENG 4500 P: SENG 4500. Application of technical and professional skills in solving a real-world problem in a team environment. Professional code of conduct, intellectual property, patents and copyrights, legal and ethical issues, entrepreneurship, and transition from student to software engineering professional.	\N
CSCI	5002	Logic for Mathematics and Computer Science	G	3	1	Yes	P: CSCI 2540 or CSCI 3200 or MATE 3223 or MATH 2427 or MATH 2775 or MATH 3256 or PHIL 3580 or equivalent. Methods of mathematical logic important in mathematics and computer science applications.	\N
CSCI	5220	Program Translation	G	3	1	Yes	P: CSCI 4627 or consent of instructor. Formal language specification for programming languages. Advanced parsing techniques. Code generation and optimization.	\N
CSCI	5501	Independent Study	G	3	1	Yes	Minimum of 3-6 hours per week depending on the nature of the work assigned. P: CSCI 2540 or CSCI 3200 or equivalent or consent of instructor. Advanced computer science students study topics that supplement regular curriculum.	\N
CSCI	5502	Independent Study	G	3	1	Yes	Minimum of 3-6 hours per week depending on the nature of the work assigned. P: CSCI 2540 or CSCI 3200 or equivalent or consent of instructor. Advanced computer science students study topics that supplement regular curriculum.	\N
CSCI	5503	Independent Study	G	3	1	Yes	Minimum of 3-6 hours per week depending on the nature of the work assigned. P: CSCI 2540 or CSCI 3200 or equivalent or consent of instructor. Advanced computer science students study topics that supplement regular curriculum.	\N
CSCI	5800	Artificial Intelligence	G	3	1	Yes	P: CSCI 2540 or CSCI 3200 or consent of instructor. Fundamental problems and techniques of artificial intelligence. Heuristic search. Concepts of expert systems.	\N
CSCI	6010	Big Data Analytics and Management	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Approaches to storing, processing, retrieving, analyzing, and managing massive-scale structured and unstructured data. High-performance computing and architectures and methods for developing and querying databases for Big Data. Column-relational, key-value, column-oriented, RDF, document-oriented, native XML, and graph databases.	\N
CSCI	6020	Machine Learning	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Mathematical, statistical and computational foundations of machine learning. Supervised and unsupervised learning, learning theory, reinforcement learning and control, and deep learning.	\N
CSCI	6030	Information Extraction and Retrieval	G	3	1	Yes	P: Enrolled in the computer science or software engineering programs or consent of instructor. Focuses on extracting, modeling, and retrieving unstructured data, primarily text documents. Text preprocessing, information extraction, term weighting and indexing, information retrieval models, relevance feedback and query expansion, system evaluation, document summarization, link analysis and web search, and activity analytics for relevance optimization and personalization.	\N
CSCI	6040	Computational Analysis of Natural Languages	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Theory and methods of natural language analysis and understanding. Morphological analysis and tagging, grammars and parsing, machine translation and natural language generation, semantic similarity, information extraction and question answering, text analytics and visualization.	\N
CSCI	6045	Cyber-Physical Systems	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Computational and application aspects of cyber-physical systems. Sensor networks, architectures, network protocols, and wireless technologies for designing and developing cyber-physical systems.	\N
CSCI	6050	Digital Image Analysis and Understanding	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Mathematical techniques and algorithms for image sampling, quantization, intensity transformations, and spatial filtering. Frequency domain filtering techniques for image restoration and reconstruction. Principles of color imaging, wavelets, morphological processing, segmentation and scene description.	\N
CSCI	6100	Cryptography and Information Security	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Cryptographic techniques to provide secrecy and authenticity of information communicated over an insecure channel; private-key cryptography, public-key cryptography and deployed cryptography.	\N
CSCI	6120	Computer Systems Architecture	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Sequential architectures, instruction sets, addressing modes, and control structures. Introduces parallel architectures.	\N
CSCI	6130	Networking and Telecommunication	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Theory and case studies of modern networking protocols and telecommunication methods. Local area and long-haul networks	\N
CSCI	6140	Mobile Communications and Wireless Security	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Signals, access protocols, application requirements, and security issues with a focus on digital data transfer.	\N
CSCI	6150	Computer and Network Security	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Computer and network security topics include cryptographic primitives, authentication, and access control. Network security, real-world security protocols, and privacy, legal, social, and ethical issues in software applications.	\N
CSCI	6220	Topics in Language Design	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Semantics and implementation characteristics of languages supporting modern computing paradigms such as functional programming, logic programming, constraint programming, and object-oriented programming.	\N
CSCI	6230	Software Engineering Foundations	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Software project development using software engineering principles and current software development techniques.	\N
CSCI	6300	Cryptographic Protocols	G	3	1	Yes	P: CSCI 6100 or consent of instructor. Design and analysis of cryptographic protocols for various tasks; emphasis on applications beyond providing secrecy and authenticity of messages.	\N
CSCI	6410	Design and Analysis of Algorithms	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Methods of designing efficient algorithms, case studies. Analysis of complexity of algorithm.	\N
CSCI	6420	Computability and Complexity	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Computability, Church’s thesis, formal models of computation. Introduces complexity theory.	\N
CSCI	6510	Distributed Computing	G	3	1	Yes	P: Consent of instructor. Principles and techniques for governing computation that is distributed over several machines connected by a network. Focuses on asynchronous distributed systems with partial failures. Topics include logical time, global state, reliable broadcast, causal broadcast, distributed shared memory, distributed mutual exclusion, stable property detection, and consensus.	\N
CSCI	6600	Database Management Systems	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Database system implementation theory and techniques. Transaction management; query processing and optimization; organization of database systems, advanced indexing, multi-dimensional data, similarity-based retrieval, and performance evaluation.	\N
CSCI	6710	Developing e-Commerce Systems	G	3	1	Yes	P:Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Concepts, technologies, and building blocks from computer science and practical software engineering required for developing web applications. Web application architectures, client and server-side programming, state management, authentication, and authorization.	\N
CSCI	6810	Topics in Artificial Intelligence	G	3	1	Yes	P: CSCI 5800 or consent of instructor. Study of state of the art in selected topic on artificial intelligence.	\N
CSCI	6820	Computer Graphics	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Principles and techniques of image rendering. Use of image rendering software.	\N
CSCI	6840	Data Mining	G	3	1	Yes	P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Data mining concepts and techniques and state of the art in data mining, including association rule mining, classification, clustering, data mining on complex type of data, and other data mining algorithms and applications.	\N
CSCI	6905	Topics in Computer Science	G	3	1	Yes	May be repeated once with change of topic. P: Enrolled in the master of science in computer science or software engineering programs or consent of instructor. Current topic in computer science.	\N
CSCI	6995	Research Project	G	3	1	Yes	P: Approval of director of graduate studies. Student selects, investigates, and reports to faculty on challenging research project.	\N
CSCI	7000	Thesis	G	3	1	Yes	May be repeated. May count maximum of 6 s.h.	\N
CSCI	7001	Thesis: Summer Research	G	3	1	Yes	May be repeated. No credit may count toward degree. Students conducting thesis research may only register for this course during the summer.	\N
SENG	5000	Programming and Data Structures Foundations	G	4	1	Yes	P: Enrolled in the master of science in software engineering program or master of science in computer science program or consent of instructor. Designed for students who are admitted to the master of science in software engineering program, but whose BS degrees are in engineering, mathematics, statistics, physics, chemistry, or similar analytic disciplines. Accelerated introduction to programming, data structures, and data abstraction using a high level language.	\N
SENG	5005	Discrete Structures and Algorithmic Foundations	G	4	1	Yes	P: Enrolled in the master of science in software engineering program or master of science in computer science program or consent of instructor. Designed for students who are admitted to the master of science in software engineering program, but whose BS degrees are in engineering, mathematics, statistics, physics, chemistry, or similar analytic disciplines. Accelerated introduction to the essentials of discrete structures, combinatorics, graph theory, automata, and algorithms.	\N
SENG	6230	Software Engineering Foundations	G	3	1	Yes	P: Enrolled in the master of science in software engineering program or consent of instructor. Software project development using software engineering principles and current software development techniques.	\N
SENG	6235	Software Project Management	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Advanced methods and techniques to initiate, plan, and control large and complex software development projects.	\N
SENG	6240	Software Architecture and Design	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Software development issues related to software architecture and design. Examines software development and implementation.	\N
SENG	6245	Software Construction	G	3	1	Yes	P: SENG 6230 or consent of instructor. Application of software specifications, design patterns, object-oriented design and concurrent programming, and testing techniques for designing, constructing, and testing large-scale software systems.	\N
SENG	6247	Software Security Engineering	G	3	1	Yes	P: Consent of instructor. Practical and theoretical knowledge in relation to design of secure software systems.	\N
SENG	6250	Software Systems Modeling and Analysis	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Methods for the construction of software including formal notation language and its application to the analysis and specification of software system requirements.	\N
SENG	6255	Software Requirements Engineering	G	3	1	Yes	P: Consent of instructor. Methods and processes for managing, analyzing and specifying requirements; use-case modeling; systems for requirements analysis and management.	\N
SENG	6260	Software Metrics and Quality Management	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Software quality metrics associated with process and product metrics. Examines development of software using various types of metrics and models employed in the field of software quality engineering.	\N
SENG	6265	Foundations of Software Testing	G	3	1	Yes	P: Consent of instructor. Fundamentals of software testing, test management, testing tools, test planning approaches, and basic static and dynamic testing methods.	\N
SENG	6270	Software Verification and Validation	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Verification and validation strategies and techniques throughout the software life-cycle, including processes that assure the desired software and documentation are developed and maintained.	\N
SENG	6275	Dependable Systems and Software Reliability	G	3	1	Yes	P: Consent of instructor. Analysis, modeling, and development of dependable systems. Foundations of software reliability.	\N
SENG	6280	Process Management and Lifecycle Modeling	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Foundations of software management and support over the complete life cycle including maturity models, change management, and optimization.	\N
SENG	6285	Cloud Computing	G	3	1	Yes	P:Consent of instructor. Techniques for developing applications and services to run on distributed networks using virtualized resources accessed over the Internet.	\N
SENG	6290	Software Engineering Project	G	3	1	Yes	P/C: SENG 6230 or consent of instructor. Practical process based and industry-oriented view of software engineering practices. Exposure to research, software development, and implementation of professional level software	\N
SENG	7000	Thesis	G	3	1	Yes	P: SENG 6230 and consent of instructor. May be repeated. May count maximum of 6 s.h.	\N
DASC	6000	Data Science Methods I	G	3	1	Yes	First of a two-course sequence. P: Enrolled in the master of science in data science program or consent of instructor. Essential mathematical, statistical, and computational knowledge needed for data scientists. Review of set theory, permutations and combinations, sums, functions, relations, recurrences, essence of differentiation and integration, elementary graph theory, and essential linear algebra. Other topics include conditional and joint probability, random variables and their distributions, expectation and moments, transformations and conditional expectation, inequalities and limit theorems, Markov Chains and  Markov Chain Monte Carlo, and Poisson processes.	\N
DASC	6005	Data Science Methods II	G	3	1	Yes	Second of a two-course sequence. P: DASC 6000 or consent of instructor. Essential mathematical, statistical, and computational knowledge needed for data scientists. Topics include Bayesian learning and probabilistic graphical models, network representations, inference, and learning.	\N
DASC	6010	Big Data Analytics and Management	G	3	1	Yes	P: Enrolled in the master of science in data science program or consent of instructor. Approaches to storing, processing, retrieving, analyzing, and managing massive-scale structured and unstructured data. High-performance computing and architectures and methods for developing and querying databases for Big Data using NoSQL systems.	\N
DASC	6020	Machine Learning	G	3	1	Yes	Mathematical, statistical, and computational foundations of machine learning and their application to Data Science problems. Regression, clustering, and classification as general-purpose machine learning tools. Neural network algorithms and deep learning.	\N
DASC	6030	Information Extraction and Retrieval	G	3	1	Yes	P: Enrolled in the master of science in data science program or consent of instructor. Extracting, modeling, and retrieving unstructured data, primarily text documents. Algorithms and tools for text preprocessing, information extraction, term weighting and indexing. Information retrieval models, query processing, and system evaluation. Link analysis and web search.	\N
DASC	6040	Computational Analysis of Natural Languages	G	3	1	Yes	P: Enrolled in the master of science in data science or consent of instructor. Theory and methods of natural language analysis and understanding for data science applications. Morphological analysis and tagging, grammars and parsing, machine translation, natural language generation, semantic similarity, question answering, text analytics, and visualization.	\N
DASC	6050	Digital Image Analysis and Understanding	G	3	1	Yes	P: Enrolled in the master of science in data science program or consent of instructor. Mathematical techniques and algorithms for extracting knowledge from images. Algorithms and tools for knowledge extraction include image sampling, quantization, intensity transformations, and spatial filtering. Frequency domain filters for image restoration and reconstruction. Techniques for color imaging, wavelets, morphological processing, segmentation, and scene description.	\N
DASC	6060	Health Informatics	G	3	1	Yes	P: Consent of instructor. Theoretical and practical foundations of health informatics for clinical, managerial, community health, and public health services.	\N
DASC	6070	Decision Support in Health Care	G	3	1	Yes	Theories and applications of decision science in health care	\N
DASC	6090	Data Science Practicum	G	3	1	Yes	P: Enrolled in the master of science in data science program and consent of instructor. Application of technical and professional skills in solving a real-world data science problem in a team environment. Application of project management principles, industry best practices, and tools. Application of analysis and design skills to solving medical and health care problems. Evaluating solutions and communicating results to a diverse audience in both oral and written form.	\N
\.


--
-- Data for Name: csfaculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.csfaculty (id, honorific, first, mi, last, email, phone, office, research_interest, rank, remarks, currentlyemployed) FROM stdin;
1	Dr.	Karl	\N	Arahamson	abrahamsonk@ecu.edu	252-328-9689	Sci-Tech C113	Programming Languages	Associate Professor	Undergraduate Program Director	Yes
2	Ms.	Sheaneatha	D	Applewhite-Hopkins	applewhitehopkins16@ecu.edu	252-328-9680	Sci-Tech C107	\N	Administrative Assistant	\N	Yes
3	Dr.	Maral	\N	Azizi	azizim19@ecu.edu	252-328-9680	Sci-Tech C108	Software Engineering, Information Retrieval, Database Design, Machine Learning	Assistant Professor	\N	Yes
4	Dr.	Qin	\N	Ding	dingq@ecu.edu	252-328-9686	Sci-Tech C118	Databases, Data mining, Bioinformatics	Associate Professor	\N	Yes
5	Dr.	Krishnan	\N	Gopal	gopal@ecu.edu	252-328-9688	Sci-Tech C118	Combinatorics, Cryptography and Information Security, Distributed Computing, Algorithms and Theoretical Computer Science	Associate Professor	\N	Yes
6	Dr.	Venkat	N	Gudivada	gudivadav15@ecu.edu	252-328-9680	Sci-Tech C-107	Data Management/Analytics, Information Retrieval/Systems, Natural Language Processing, Computer Vision, Personalized Learning	Professor	Department Chair	Yes
7	Dr.	Nick	\N	Herndon	herndonn19@ecu.edu	252-328-9696	Sci-Tech C108	Artificial Intelligence, Machine Learning, Data Science, Big Data Analytics, and Computational Biology	Assistant Professor	\N	Yes
8	Dr.	Mark	\N	Hills	hillsma@ecu.edu	252-328-9692	Sci-Tech C110	Program Analysis, Programming Language Implementation, Domain-Specific Languages, Software Modeling and Verification, Software Analytics, Formal Semantics of Programming Languages	Associate Professor	Graduate Program Director	Yes
9	Mr.	Bobby	\N	Hoggard	hoggardr@ecu.edu	252-328-9695	Sci-Tech C105	Cloud Computing, Computer Architecture, Web Applications, Computer Science Education	Instructor	\N	Yes
10	Mr.	John	\N	Jones	jonesjo@ecu.edu	252-328-9606	Sci-Tech 109	Data Structures and Algorithms, Digital Electronics, Software Construction, Networking, Data Center Virtualization, Distributed Computing, Storage Management, Operating Systems	Adjunct Instructor	\N	Yes
11	Dr.	Jonathan	A	Saddler	saddlerj20@ecu.edu	252-328-9687	Sci-Tech C117	Software Engineering	Teaching Assistant Professor	\N	Yes
12	Dr.	Kamran	\N	Sartipi	sartipik16@ecu.edu	252-328-9694	Sci-Tech C122	Software Engineering, Knowledge Engineering and Data Mining, Cyber Security and Data Privacy, User-Behavior based Access Control, Medical & Health Systems Integration and Informatics, Service Intelligence for Cloud, Decision Support Systems	Assistant Professor	\N	Yes
13	Dr.	Ronnie	\N	Smith	smithron@cs.ecu.edu	252-328-9687	Sci-Tech C117	Artificial Intelligence, Spoken Natural Languages	Research Associate Professor	\N	No
14	Mr.	Joel	\N	Sweatte	sweattej@ecu.edu	252-328-9439	Sci-Tech C112	Data Center Virtualization, Cloud Computing, Mainframe Platform Computing, Storage Management	Instructor	\N	Yes
15	Dr.	Nasseh	\N	Tabrizi	tabrizim@ecu.edu	252-328-9691	Sci-Tech C112	Big Data Analytics, Cloud Computing, Computer Vision, Software Requirement Engineering, Information Retrieval, Virtual Reality, Machine Learning, Computer Science and Software Engineering Education	Professor	\N	Yes
16	Dr.	Rui	\N	Wu	wur18@ecu.edu	252-328-9682	Sci-Tech C107	Data Processing and Visualization, Interdisciplinary Research	Assistant Professor	\N	Yes
17	Dr.	Patyi	\N	Imre	patyii@ecu.edu	252-328-6461	\N	\N	Associate Professor	No	\N
18	Ms.	Sumati	R	Kulkarni	\N	\N	\N	\N	Teaching Assistant	\N	No
19	Ms.	Logan	G	Childers	\N	\N	\N	\N	Teaching Assistant	\N	No
20	Mr.	Gregory	\N	Knight	\N	\N	\N	\N	Adjunct Instructor	\N	No
21	Dr.	 Sergiy	\N	Vilkomir	\N	\N	\N	Software Testing	Associate Professor	\N	No
22	Dr.	Ding	\N	Junhua	\N	\N	\N	Software Testing, Machine Learning	Associate Professor	\N	No
23	Mr.	David	M	Anderson	\N	\N	\N	\N	Teaching Assistant	\N	No
24	Mr.	Aryan	\N	Azimzadeh	\N	\N	\N	\N	Teaching Assistant	\N	No
25	Mr.	Shawn	K	Braddy	\N	\N	\N	\N	Teaching Assistant	\N	No
26	Dr.	Masao	\N	Kishore	\N	\N	\N	\N	Associate Professor	\N	No
27	Mr.	David	R	Hoffman	\N	\N	\N	\N	Teaching Assistant	\N	No
\.


--
-- Data for Name: deptnum; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deptnum (prefix, number, coursedirectorid, remarks) FROM stdin;
\.


--
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faculty (faculty_id, committee_id, start_date, end_date, remarks) FROM stdin;
\.


--
-- Data for Name: fte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fte (faculty, year, semester, fte) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

