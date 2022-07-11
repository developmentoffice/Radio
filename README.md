# Online radio with icecast and liquidsoap

1. Put mp3 songs in `sounds/music`

2. Put mp3 jingles in `sounds/jingles`

3. Put clock.wav in `sounds/clocks` and security.mp3 in `sounds/security`

4. Create `/config/icecast.xml` from example

5. Create `/config/radio.liq` from example

6. Run docker container `docker-compose up -d`

7. Install icecast and liquidsoap
```bash
docker exec -it radio-system bash
/radio/scripts/setup.sh
```

8. Generate music playlist with `docker exec radio-system /radio/scripts/playlist.sh music`

9. Generate jingles playlist with `docker exec radio-system /radio/scripts/playlist.sh jingles`

10. Start icecast `docker exec radio-system /radio/scripts/start-server.sh`

11. Start play music `docker exec radio-system /radio/scripts/play.sh`

12. For stop playing use `docker exec radio-system /radio/scripts/stop.sh`

13. For stop icecast server use `docker exec radio-system /radio/scripts/stop-server.sh`
