(defrule compare-career
=>
(printout t "What do you love to do or do best (develop or design or other)?")
(assert (preference1 (read))))


(defrule zone
(preference1 develop)
=>
(printout t "What do you enjoy developing (front-end or back-end)?")
(assert (zone (read))))


(defrule front-end-frameworks
(and (preference1 develop)
(zone front-end))
=>
(printout t "Have you used any front-end frameworks (yes or no)?")
(assert (front-end-frameworks (read))))

(defrule back-end-frameworks
(and (preference1 develop)
(zone back-end))
=>
(printout t "Have you used any back-end frameworks (yes or no)?")
(assert (back-end-frameworks (read))))

(defrule object-oriented
(and (preference1 develop)
(zone back-end))
=>
(printout t "Have you used and object-oriented languages (yes or no)?")
(assert (object-oriented (read))))

(defrule network-programming
(and (preference1 develop)
(zone back-end))
=>
(printout t "Do the terms: sockets, RPCGen sound familiar to you (yes or no)?")
(assert (network-programming (read))))

(defrule design-draw-hand
(and (preference1 design))
=>
(printout t "Can you draw by free hand (yes or no)?")
(assert (design-draw-hand (read))))

(defrule design-draw-software
(and (preference1 design))
=>
(printout t "Can you draw using software (yes or no)?")
(assert (design-draw-software (read))))

(defrule design-tools
(and (preference1 design)
(design-draw-software yes))
=>
(printout t "Have you used Adobe design studio (yes or no)?")
(assert (design-tools (read))))

(defrule design-logic
(and (preference1 design))
=>
(printout t "Do you understand user-based design (yes or no)?")
(assert (design-logic (read))))

(defrule other-overview
(and (preference1 other))
=>
(printout t "Do you own a business (yes or no)?")
(assert (other-overview (read))))

(defrule other-option1
( and(preference1 other)
(other-overview no))
=>
(printout t "Do you enjoy interacting with people? (yes or no)?")
(assert (other-option1 (read))))

(defrule other-option2
( and(preference1 other)
(other-overview no)
(other-option1 no))
=>
(printout t "Do you like writing? (yes or no)?")
(assert (other-option2 (read))))

(defrule suitable-careers1
(and (front-end-frameworks no)
(back-end-frameworks no)
(object-oriented no)
(network-programming no)
(design-draw-hand no)
(design-draw-software no)
(design-logic no)
(other-overview no)
(other-option1 no)
(other-option2 no))
=>
(printout t "Sorry. We couldn't find a match that suits your preferences.")
(assert (suitable-careers no)))

(defrule suitable-careers2
(and (front-end-frameworks yes)
(back-end-frameworks no)
(object-oriented no)
(network-programming no))
=>
(printout t "You could be a front-end developer.")
(assert (suitable-careers yesly-probably-yes))))


(defrule suitable-careers3
(and (front-end-frameworks no)
(back-end-frameworks yes)
(object-oriented no)
(network-programming no))
=>
(printout t "You could be a back-end developer. However, try and learn more on object oriented programming.")
(assert (suitable-careers possibly-yes)))

(defrule suitable-careers4
(and (front-end-frameworks no)
(back-end-frameworks no)
(object-oriented no)
(network-programming yes))
=>
(printout t "You could be a software engineer.")
(assert (suitable-careers yes)))

(defrule suitable-careers5
(and (front-end-frameworks yes)
(back-end-frameworks yes)
(object-oriented yes)
(network-programming yes))
=>
(printout t "You could be a full-stack engineer.")
(assert (suitable-careers yes)))

(defrule suitable-careers6
(and (design-draw hand yes))
=>
(printout t "You could be a creative designer, but learn more on design software and logic.")
(assert (suitable-careers yes)))

(defrule suitable-careers10
(and (other-overview yes))
=>
(printout t "Yay! A budding entrepreneur.")
(assert (suitable-careers yes)))

(defrule suitable-careers11
(and (other-option1 yes))
=>
(printout t "You could be a sales executive.")
(assert (suitable-careers yes)))

(defrule suitable-careers12
(and (other-option2 yes))
=>
(printout t "You could be a technology evangilist (Write about, review and critique tech products).")
(assert (suitable-careers yes)))
;mmm