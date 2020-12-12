FROM 0x01be/cudd:build as build

FROM 0x01be/base

COPY --from=build /opt/cudd/ /opt/cudd/

