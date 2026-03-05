FROM marsel7/openfang:latest

USER root

ENV PORT=4200
ENV OPENFANG_LISTEN=0.0.0.0:4200

# Custom Skills copy karo
COPY skills/ /root/.openfang/skills/

WORKDIR /app
EXPOSE 4200

CMD ["openfang", "start", "--host", "0.0.0.0", "--port", "4200"]
