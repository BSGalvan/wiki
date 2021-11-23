---
title: RSS
---
[Up one Page](index.md) | [Back to ToC](index.md)

## What is RSS?

RSS stands for "Really Simple Syndication", and essentially allows you to see
the updates to a website, without actually having to visit the website.

---

## Using RSS

The way you use RSS is by using a RSS feed reader.

This takes in an RSS feed from the website you want to see updates from, and
then parses the XML-formatted data to give you a list of articles, and
optionally additional metadata like the articles descriptions', date of
publication, votes/comments etc.

These pieces of software are sometimes also called news readers/aggregators,
due to their use in aggregating news articles from various news websites (who
were one of the earliest mass adopters of RSS feeds).

Here are some to get you started:

- Terminal-based: [newsboat](https://newsboat.org/)
- For Android devices:
  [Feeder/FDroid](https://f-droid.org/packages/com.nononsenseapps.feeder/) or
  [Feeder/GPlay](https://play.google.com/store/apps/details?id=com.nononsenseapps.feeder.play).
- GUI-based: [RSSGuard](https://github.com/martinrotter/rssguard). This one
  also has builds for Windows/MacOS, and integrates with online feed readers
  such as Feedly (see below).
- SaaS-based: [Feedly](https://feedly.com/). Even though the Pricing tab
  seems to show otherwise, you can start using this online RSS feed reader
  with a free plan, allowing you to subscribe to upto 100 sources and to
  organize them into 3 feeds.

Feel free to poke around and find others which may suit your needs better! The
ones above are just the ones I have used (newsboat, Feeder) or have looked into
briefly (RSSGuard, Feedly).

_**Note**_ -- Remember to double check who is the app publisher on Google Play!
There are quite a few apps named Feeder, which look similar but only the one by
NoNonsenseApps is, well, no nonsense!

---

## Finding RSS feeds

So far so good. RSS sounds really cool and we've set outselves up to
consume RSS feeds. How do we find them though?

Well, this is where we have to roll up our sleeves a little bit. Some modern
websites and social networks try to shelve RSS as an "old and obsolete"
technology, by burying their RSS feed links _deep_ inside their sitemaps, but
rest assured that almost every website worth following has an RSS feed.

Also, I should tell you now that RSS is not _just_ for news. See [more exotic
sources](####more-exotic-sources) for more information!

_**Note**_ -- even if some websites don't, there's software out there to
_create_ an RSS feed out of a website for you, for example, see
[rss-bridge](https://github.com/RSS-Bridge/rss-bridge). However, I currently do
not know of a "just werks" way of setting that up, so I'll leave it as an
exercise for interested readers.

Alright, with the challenge ahead of us clear, here are some tips on where to find RSS feeds:

### General and News 

- Look for a symbol which looks similar to
  [this](https://en.wikipedia.org/wiki/File:Feed-icon.svg). This is the RSS
  symbol, and usually links to the RSS feed for a particular website (which has
  the file extension of .xml/.atom). Don't worry about the code, that is for
  the feed reader to decipher.

  Example : see if you can spot it [here](https://opensource.com/).

- Some news websites have separate feeds for separate topics. However, these
  are all usually grouped under an "RSS Feeds" tab, so following the above
  method or looking for a link called __RSS Feeds__ will take you there.

  Example : see you find it [here](https://timesofindia.indiatimes.com/)? This
  will take you to a page _filled_ with RSS feeds.

### More Exotic Sources

#### Reddit

Simply append the URL to a subreddit/post/user with `.rss` to generate the RSS
feed for the corresponding item. For example,

  * Here's the feed for `r/linux`: 
  ```
  https://reddit.com/r/linux.rss
  ```
  * And for `u/andromeda321`
  ``` 
  https://reddit.com/u/andromeda321.rss
  ```
_**Author's Note**_ -- with that being said, I recommend using [libreddit](libredd.it) or
[teddit](teddit.net) as a Reddit frontend since they are way more
privacy-focused, not to mention light on your browsers!

#### GitHub

Here's the syntax GitHub follows for generating the RSS feed for a particular subdirectory:
```
https://github.com/user/repo/commits/branch.atom
```
For everything else (releases, tags) similarly append `.atom` at the end of
the URL. For example the following recieves updates for the master branch of
neovim:
```
https://github.com/neovim/neovim/commits/master.atom
``` 

#### YouTube Channels

This is best explained using an example. Suppose you want to keep up to date
with the videos posted by 3Blue1Brown. The channel URL is:

```
https://www.youtube.com/channel/UCYO_jab_esuFRV4b17AJtAw
```

In order to get the RSS feed use the following:

```
https://www.youtube.com/feeds/videos.xml?channel_id=UCYO_jab_esuFRV4b17AJtAw
```

If you have an legacy-style URL ending in `user/username`, replace the
`?channel_id=` chunk with `?user=username`.

_**Author's Note**_ -- again, that being said, I recommend using an [Invidious
instance](https://docs.invidious.io/Invidious-Instances.md), since they are
more privacy-focused. Try to pick an instance which doesn't use Cloudflare!

> Okay, fine I'll use Invidious! But how?
>
>  -- You (hopefully)

Great! It's very simple.
I'll use `yewtu.be` as an example Invidious instance (similar methods should
apply for your favourite instance). The syntax is basically the same as in the
case of YouTube, and so the RSS feed for 3Blue1Brown is:

```
 https://www.yewtu.be/feeds/videos.xml?channel_id=UCYO_jab_esuFRV4b17AJtAw
```

See? Didn't I tell you it was simple?

#### Twitter (almost)

Ah, Twitter. A micro-blogging website that used to provide RSS feeds but
[yoinked
it](https://web.archive.org/web/20131021104451/https://dev.twitter.com/discussions/11582),
_unless_ you were to use a feed reader that integrated with Twitter via it's
newer v1.1 API.

But not to fret. [nitter](nitter.net) exists, is way more private, _and_
provides RSS feeds for Twitter accounts, hashtags and so on. Here's how you use
nitter to get your RSS feeds:

* Twitter handles : Suppose you want to 'follow' @Gentoo. The corresponding RSS
  feed is 
  ```
  https://nitter.net/gentoo/rss
  ```
  
* Twitter Hashtags : Suppose you want to 'follow' #XMR. The corresponding RSS
  feed is 
  ```
  https://nitter.net/search/rss?f=tweets&q=%23XMR
  ```


_**Note**_ -- nitter allows for _way_ more fine-grained control on which tweets
to put in your RSS feed. For example, you can exclude retweets, verified
tweets, videos and so on. See the search bar dropdown menu for (easier) access
to these knobs.

---

## Epilogue

RSS is an awesome, no-nonsense method of keeping up-to-date with things you
actually want to keep up with. It is almost as old as me (initial release date
March 15, 1999!), but still sees active usage.

Best of all it helps keep information overflow and clutter at bay, by
placing the control in your hands.

One very interesting use case is to follow the Twitter handles of reputed news
agencies (such as ANI/PTI/Reuters/Agence France-Presse etc.) via Feeder +
nitter. This enables you to **bypass Twitter entirely**!

_**Note**_ -- I know it is ironic that this wiki doesn't have an RSS feed. Once
I write frequently enough to have a reason to write the code for generating an
RSS feed, rest assured, I will. No need to go shave that yak just yet!
