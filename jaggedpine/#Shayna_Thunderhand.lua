-- Quest: Order of the Storm Caller

function event_say(e)
	if(e.message:findi("hail") or e.message:findi("organization") or e.message:findi("founding member") or e.message:findi("plans") or e.message:findi("ritual") or e.message:findi("item") or e.message:findi("establish themselves") or e.message:findi("great storm") or e.message:findi("order of the storm caller") or e.message:findi("decision") or e.message:findi("retreat") or e.message:findi("never forgive") or e.message:findi("traitorous") or e.message:findi("revenge") or e.message:findi("pieces") or e.message:findi("urwenae's tome") or e.message:findi("stolen") or e.message:findi("retrieve the ancient ashwood tome") or e.message:findi("aid the order") or e.message:findi("components")) then
		if(e.other:GetFaction(e.self) < 2) then
			if(e.message:findi("hail")) then
				e.self:Emote("gives a soft smile and delicate motion with her hand and bow of her head, 'Greetings, " .. e.other:GetCleanName() .. ". It is a pleasure to make your acquaintance. I am Shayna Thunderhand -- sorceress of The Rainkeeper and one of many ambassadors to the Jaggedpine. The recent events have yielded quite an interesting turn in our [organization's] duties -- and we are very excited to once again be reunited with our brethren and homeland.'");
			elseif(e.message:findi("organization")) then
				e.self:Say("The Order of the Storm Caller is one whose roots are tied with the foundation of Qeynos and it's establishments dedicated to the arcane sciences. When the Jaggedpine forest and it's culture and people were still a part of the Qeynos kingdom, the wizards, magicians, and enchanters of Qeynos invited those from the Jaggedpine to partake in their fledgling studies. Gladly, our ancestors did so and returned to the forest with their newfound knowledge and passion in the art of the arcane. It was then that our elders felt that a new order must be established -- the Order of the Storm Callers. As with all existing orders of The Rainkeeper, we had a [founding member] -- one who made it possible for us to maintain our studies and interweave it into our everlasting faith in Karana.");
			elseif(e.message:findi("founding member")) then
				e.self:Say("A wise and stoic woman by the name of Toliara Stormcaller was the first of our ancestors to master the art of wizardry. When she returned to the Jaggedpine with her newfound knowledge, the elders were very intrigued. She was asked to coordinate the efforts of all the Jaggedpine natives that had taken an interest and shown their adept talents in the ways of the arcane and form an opening ceremony to take place during the winter solstice celebration. Gladly and excitedly, she did so. The magicians, wizards, and enchanters loyal to The Rainkeeper met for several months, formulating [plans] and establishing [rituals] that would usher their order into the collective goal and cause of Karana's faithful.");
			elseif(e.message:findi("item")) then
				e.self:Say("The enchanters, who were also artisans highly skilled in the ways of jewel craft and even blacksmithing, were asked to forge a golden scepter with a hollow cradle at its peak. The magicians then conjured the elemental essences of the storm -- water and air and sealed them in an azure sphere that was created from pure, enchanted elemental water. Toliara and her fellow wizards would spend days researching and creating a spell and rune of their own with which they would fulfill the purpose of the item. She etched the sacred runes upon the base of the scepter and sealed the separate items into one whole. Upon the dawn of the winter solstice, the fledgling order met at the Shrine of Karana where they would then [firmly establish themselves] among Karana's most faithful.");
			elseif(e.message:findi("plans") or e.message:findi("ritual")) then
				e.self:Say("The night before the sacred annual ritual and festival, the hierophant of Karana passed into the great Eye of Karana's Storm. A new hierophant was to be named at the ceremony sited at the Throne of Karana's Thunder. It is tradition that when a new hierophant is recognized, that the elders of each artisan, spiritual, and military order present the sacred item of their order that would then be wielded in the sacred ceremony -- in this case, it was the winter solstice. Toliara called upon her brothers and sisters of the arcane sciences and together they forged an [item] of considerable power significant to that which The Rainkeeper sacredly represents.");
			elseif(e.message:findi("establish themselves")) then
				e.self:Say("The new hierophant was named and it was he that would lead the opening ceremonies of the solstice dawn. Tradition dictates that the head of each of The Rainkeeper's order would come forward, bearing their sacred item to the hierophant and each in their own way, respectfully representing their order and its foundation, aid the hierophant in the ceremony. Toliara, representing the fledgling arcane order, was last to present her order's item to the new hierophant -- whose curiosity was piqued by the beautiful and most apparently powerful item. The ceremony began and each item was used in the [conjuration of a great storm].");
			elseif(e.message:findi("great storm")) then
				e.self:Say("The druids chanted around their hierophant, who held their order's sacred item. As they chanted, they brought forth the great blanket of silver clouds upon the horizon. The rangers, rogues, and bards in their musical chant ushered in the raging winds that guided the druids' clouds over the forest. It was the duty of the veterans, the warriors and knights, to call forth the thunder and begin the broiling of the storm. Toliara and her order then began an arcane chant. She raised the scepter upwards to the sky and collectively, the small order wove a single spell that arched from the scepter and struck the center of the tempest that responded in a great display of lightening and rain. Until the rise of the next dawn, the ceremonies continued -- each order respectively praising Karana. By the rise of second dawn and the end of the solstice celebrations, the [Order of the Storm Caller] was inducted into the ranks of Karana's faithful.");
 			elseif(e.message:findi("aid the order")) then
				e.self:Say("Very well, my friend, and may Karana guide you through this path. There is one known as D'mitrious Irska, a powerful magician who can be found at the arcane hall in Qeynos. He is currently the senior member of our order and will be able to further aid you than I, for most unfortunately, many pages of the tome have been damaged by Vranol when he stole it. D'mitrious is more wise in this matter than myself and his willingness to aid you should be more than overwhelming once the scepter has been presented to him. However, he will require one [further component] with the scepter to secure his aid.");
			elseif(e.message:findi("order of the storm caller")) then
				e.self:Say("That is the name that was bestowed to the arcane order of Karana's faithful, led by Toliara. For several generations the order would thrive and become the primary ambassadors between the city proper of Qeynos and the forest. Eventually, when corruption threatened the land, it would be the Order of the Storm Caller that would act as the messengers and mediators between the political and spiritual interests of the Jaggedpine and ultimately, it would be their direct ties to the city that would influence the [decision] of Antonious III.");
			elseif(e.message:findi("decision")) then
				e.self:Say("All wished to spare the Jaggedpine from corruption for it was the sacred homeland of one of the city's largest and most prosperous religious and cultural foundations. The Order of the Storm Caller knew that separation was the only way to assure the forest's safety, for Qeynos would need all of its resources to defend against the approaching venomous shadow. However, not all were in favor of this decision. One known as Urwenae, an enchantress and at the time second to only the order's arch mage in power and influence, held strong opposition to removing themselves indefinitely from their sacred lands. However, she was overruled by the decision of her superiors and the majority of the Jaggedpine Orders, thus the forest was sealed. The Order of the Storm Caller, along with the Veterans of the Storm, would [retreat] fully from the forest to aid the inevitable battles in defending Qeynos and its kingdom from threat.");
			elseif(e.message:findi("retreat")) then
				e.self:Say("'Collectively, the council at Qeynos and the orders of Karana's faithful knew that it was best for the forest to have only the bare minimum of necessary inhabitants needed to preserve the culture and ancient ways remain behind. The shadow of corruption and turmoil was inevitable and Qeynos could not afford to spare these resources in such great quantity and the Orders agreed. The Veterans of the Storm, the knights and warriors of the Jaggedpine, and the Order of the Storm Caller were asked to relocate fully to Qeynos. There was little opposition to this decision, although the fanatical Urwenae [would never forgive her superiors and brethren] for allowing them to become separated from their homeland.");
			elseif(e.message:findi("never forgive")) then
				e.self:Say("She felt that all of Karana's Orders should remain in the forest -- that Qeynos' resources were plenty and that the threat of the shadow would surely call the aid of nearby Erudin and perhaps even Rivervale if Qeynos were to fall into such dire jeopardy. Despite her zealous and near-fanatical opposition to the ruling, she was a well-respected member of the Order and was in-line to inherent the position of arch-mage when her mentor and the current ranking member of the Order passed into the great Eye of Karana's Storm. For nearly a decade she waited in silence -- her disapproval of the decision a constant, although she cooperated with her Order, she rarely left the Orders' library. Eventually, she ascended to the roll of arch-mage over the Order of the Storm Caller and it was then that she had the opportunity to exact her vengeance against [those whom she thought as traitorous] heretics against Karana and their ancient, sacred path.");
			elseif(e.message:findi("traitorous")) then
				e.self:Say("Ultimately, she blamed everyone who had voluntarily and without opposition agreed to the ruling made ten years prior with the sealing of the Jaggedpine forest. Urwenae despised both her fellow members of the Order of the Storm Caller as well as the Veterans of the Storm -- viewing both groups as traitors. Ten years of reclusive behavior had given the necessary time for her planning to blossom and the death of her mentor and her ascension granted the perfect opportunity to execute her [revenge]. Upon the tenth anniversary of the Jaggedpine being sealed, a mere fortnight into her reign as arch-mage, Urwenae disbanded the Order in a violent display. A massacre was committed in the sacred halls of Qeynos' arcane studies -- an incident that was cleverly covered-up by the political council of Qeynos to keep the citizens from unnecessary worry regarding an external threat.");
			elseif(e.message:findi("revenge")) then
				e.self:Say("She had gathered a small group of like-minded followers -- mainly, her most adept pupils that trusted her explicitly and were thus easily manipulated by her. The Order met in the cellar level of the arcane hall in Qeynos and there, Urwenae and her pupils destroyed all but a select few members of the arcane order. Many of the elders survived -- escaping through portals of their own creation, although we lost many brave souls who attempted to remain behind and see their would-be executioners rightfully abolished. Urwenae and the two pupils, one being a powerful wizard that survived the encounter escaped through a portal when all that remained in the hall were dead. It is said that Urwenae then destroyed the sacred item that Toliara had forged all those centuries before, splitting the item into several pieces. As they are indestructible by design, Urwenae instructed her pupils to scatter the [pieces] throughout Norrath, while she herself would hide the scepter deep in the bowels of the Hole.");
			elseif(e.message:findi("pieces")) then
				e.self:Say("I cannot say for certain how Urwenae divided the scepter for the only documentation we possess was written in an ancient dialect that until recently, none could translate. The dialect is one of an ancient human tongue that dates centuries before the foundation of Qeynos -- even before the foundation of the Throne of Karana's Thunder. Of course this particular incident occurred in a more recent time, but Urwenae was well-versed in the ancient tongues of Norrath and knew well that her journal would be legible only by the most learned of Qeynos' scholars or the forest's elders, and even then her words would seem the fanciful tale of a madwoman -- for there never was a massacre in the arcane hall in Qeynos, or so was the common belief until now. Those of us who are descendants of the few survivors that preserved the order knew of the truth and until recently, we had in our possession [Urwenae's Tome].");
			elseif(e.message:findi("urwenae's tome")) then
				e.self:Say("Urwenae's tome, an Ancient Ashwood Tome granted to her by her late mentor, detailed Urwenae's plans and what exactly she had done with the pieces of the scepter. You must understand, Urwenae was an arcane scientist -- and a brilliant one at that. However, she was fanatically organized and required documentation of everything -- a trait that was considered a merit before her madness had been discovered. The tome will likely detail where the missing pieces of the scepter lies and it may also copies of the lost, ancient scrolls scribed by Toliara and the first members of the order -- scrolls that detail the exact runes and arcane chants to re-create the enchantment of the scepter, which was likely broken when Urwenae dismantled it. Unfortunately, the tome was [stolen] by one of the bandits that have recently inhabited our forest.");
			elseif(e.message:findi("stolen")) then
				e.self:Say("I'm not entirely certain, although I doubt it was done for any purpose regarding the Order, our history, or any of the specific arcane knowledge contained within. Likely, the thief thought that it might fetch a price on the underground market of Norrath. The scouts have been able to identify the individual as Vranol Blackguard, the second eldest of the Blackguard family and one of its most dangerous members. We believe him to already be in High Pass. If [you can retrieve the Ancient Ashwood Tome] from him, if he still has it within his possession of course, then I would be more than willing to impart unto you our ancient arcane lore. However, this reward can only be wielded by one whose heart and faith belongs fervently to The Rainkeeper and their profession is of one of the three acceptable schools of magic. If you are unable to wield what reward I can provide, then I shall not bear ill will if you turn away, my friend.");
			elseif(e.message:findi("retrieve the ancient ashwood tome")) then
				e.self:Say("Marvelous! However, for me to reward you properly, you must seek our the tormented spirit of Urwenae. It is rumored that when she went into the depths of the erudite hereitcs' former home, that she was cursed by one of the ancient spirits there -- her mind and spirit forever trapped within the boundaries of the ruins. As the magic of the scepter was tied to its bearer, it is likely that the essence of the Gleaming Crystal Scepter remains with her, so long as her essence resides on the prime plane of Norrath. If you can find her, retrieve the scepter, and return it to me with the recovered tome, I shall be better able to properly reward you for your services to us.");
			elseif(e.message:findi("components")) then
				e.self:Say("The Scroll of the Tempest Eye, one scribed by Toliara herself as she completed her portion of the item, has been lost to us for some time. Urwenae tore the scroll from the pages of the tome and gave it to her pupil, Lazara, and instructed her to take them into Permafrost with the hopes that the threat of the great ice dragon that dwells there to ward any would-be heroes away. Like Urwenae, Lazara fell to an unknown, although dark fate and it is likely that the twisted impression of her former existence remains -- guarding the scroll with its unlife.");
			end
		elseif(e.other:GetFaction(e.self) < 6) then
			e.self:Say("You need to prove your dedication to our cause before I can discuss such matters with you.");
		else
			e.self:Say(eq.ChooseRandom("I didn't know Slime could speak common.  Go back to the sewer before I lose my temper.","Is that your BREATH, or did something die in here?  Now go away!","I wonder how much I could get for the tongue of a blithering fool?  Leave before I decide to find out for myself.","Oh look..a talking lump of refuse..how novel!"));
		end
	end
end

function event_trade(e)
	local item_lib = require("items");
	
	if(e.other:GetFaction(e.self) < 2 and item_lib.check_turn_in(e.self, e.trade, {item1 = 9232,item2 = 9231})) then -- Ancient Ashwood Tome and Gleaming Crystal Scepter
		e.self:Emote("Aaah. . . yes. Well done. Well done, indeed, my friend. The tome still contains the Toliara's ancient notes and we shall be able to restore the lost magic to the scepter.'' Shayna holds the scepter firmly in one hand and the opened tome in the other. In a powerful voice, she recites several arcane words. As she speaks in the magical rhythm of the spell, the scepter in her hand begins to faintly glow and seems almost to haze as if enshrouded in a blanket of dense fog for but a moment. Shayna reaches the last word of her spell and extends the misted scepter to you, ''This is the Scepter of Storms. It is not yet complete and requires its original pieces to be whole once again. If you wish to continue to [aid the Order of the Storm Caller], I shall be more than willing to complete the scepter for you -- as your worth to us shall be proven in the task.'");
		e.other:Faction(e.self,1597,5);  -- Residents of Jaggedpine
		e.other:Faction(e.self,272,2);  -- Jaggedpine Treefolk
		e.other:Faction(e.self,302,2);  -- Protectors of Pine
		e.other:Faction(e.self,262,1);  -- Guards of Qeynos
		e.other:QuestReward(e.self,0,0,0,0,9233,1000); --  Scepter of Storms
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
