import React, { useEffect, useState } from "react";
import { useSearchParams } from "react-router-dom";
import { Pagination, MenuItem, Select, Stack, Typography } from "@mui/material";

const PaginationComponent = ({ pageCount }) => {
  const pageSizes = [5, 10, 20, 50, 100];
  const [searchParams, setSearchParams] = useSearchParams();
  const [page, setPage] = useState(parseInt(searchParams.get("page")) || 1);
  const [pageSize, setPageSize] = useState(
    parseInt(searchParams.get("pageSize")) || 10
  );

  const handlePageOutOfRange = () => {
    setPage(1);
    updateSearchParams({ page: 1 });
  };

  useEffect(() => {
    if (page > pageCount) handlePageOutOfRange();
  }, []);

  const updateSearchParams = (newParams) => {
    let params = {};
    searchParams.forEach((value, key) => {
      params[key] = value;
    });
    setSearchParams({ ...params, ...newParams });
  };

  const handleChange = (event, value) => {
    setPage(value);
    updateSearchParams({ page: value });
  };

  const handleChangePageSize = (e) => {
    setPageSize(e.target.value);
    updateSearchParams({ pageSize: e.target.value });
  };

  return (
    <Stack direction="row" justifyContent={"space-between"}>
      <Pagination
        defaultPage={page}
        count={pageCount}
        onChange={handleChange}
        shape="rounded"
      />
      <Typography>
        Page {page} / {pageCount}
      </Typography>
      <Select
        labelId="page-size"
        id="page-size"
        value={pageSize}
        label="Resuls per page"
        size="small"
        onChange={handleChangePageSize}
      >
        {pageSizes.map((items, i) => {
          return (
            <MenuItem key={`pagesize-${i}}`} value={items}>
              {items}
            </MenuItem>
          );
        })}
      </Select>
    </Stack>
  );
};

export default PaginationComponent;
