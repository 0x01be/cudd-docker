FROM 0x01be/cudd:build as build

FROM alpine

COPY --from=build /opt/cudd/ /opt/cudd/

