-- uses original id where possible
function JobManager:current_real_job_id()
  return self._global.current_job.original_id or self:current_job_wrapper_id() or self:current_job_id()
end

-- adds extra field to global to track base heist id
Hooks:PostHook(JobManager, "activate_job", "activate_job_single_day_heists", function(self, job_id, current_stage)
  local job = tweak_data.narrative.jobs[job_id]

  if job then
    self._global.current_job.original_id = job.original_id
  end
end)

-- spawns bags on heists that need it
Hooks:PostHook(JobManager, "_setup", "single_day_heists_extra_bags", function(self)
  if self:current_job_id() == "train_trade" then
    for _ = 1, 4 + math.random(5) do
      table.insert(managers.loot._distribution_loot, {
        daily_art = true,
        challenge_art_ghost = true,
        carry_id = "painting",
        multiplier = 1,
        peer_id = 1
      })
    end
  end
end)
