# Online radio with icecast and liquidsoap

1. Put mp3 songs in `sounds/music`

2. Put mp3 jingles in `sounds/jingles`

3. Put clock.wav in `sounds/clocks` and security.mp3 in `sounds/security`

4. Install icecast and liquidsoap `docker exec radio-system /radio/scripts/setup.sh`

5. Create `/config/icecast.xml` from example

6. Create `/config/radio.liq` from example

7. Generate music playlist with `docker exec radio-system /radio/scripts/playlist.sh music`

8. Generate jingles playlist with `docker exec radio-system /radio/script/playlist.sh jingles`

9. Start icecast `docker exec radio-system /radio/script/start-server.sh`

10. Start play music `docker exec radio-system /radio/script/play.sh`

11. For stop playing use `docker exec radio-system /radio/script/play.sh`

12. For stop icecast server use `docker exec radio-system /radio/script/stop-server.sh`
